; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_init_stringtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_init_stringtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@symfile_bfd = common dso_local global i32 0, align 4
@stringtab = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @init_stringtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_stringtab(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = call i32 (...) @free_stringtab()
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @bfd_seek(i32* %14, i64 %15, i32 0)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %66

19:                                               ; preds = %13
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @bfd_bread(i8* %20, i32 4, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @symfile_bfd, align 4
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %25 = call i64 @bfd_h_get_32(i32 %23, i8* %24)
  store i64 %25, i64* %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 4
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i64, i64* %6, align 8
  %31 = icmp ult i64 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %19
  store i32 0, i32* %3, align 4
  br label %66

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @xmalloc(i64 %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** @stringtab, align 8
  %37 = load i8*, i8** @stringtab, align 8
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %39 = call i32 @memcpy(i8* %37, i8* %38, i32 4)
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %40, 8
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %66

43:                                               ; preds = %33
  %44 = load i8*, i8** @stringtab, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  %46 = load i64, i64* %6, align 8
  %47 = sub i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @bfd_bread(i8* %45, i32 %48, i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %6, align 8
  %54 = sub i64 %53, 4
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %43
  %57 = load i8*, i8** @stringtab, align 8
  %58 = load i64, i64* %6, align 8
  %59 = sub nsw i64 %58, 1
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56, %43
  store i32 -1, i32* %3, align 4
  br label %66

65:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %42, %32, %18, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @free_stringtab(...) #1

declare dso_local i64 @bfd_seek(i32*, i64, i32) #1

declare dso_local i32 @bfd_bread(i8*, i32, i32*) #1

declare dso_local i64 @bfd_h_get_32(i32, i8*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
