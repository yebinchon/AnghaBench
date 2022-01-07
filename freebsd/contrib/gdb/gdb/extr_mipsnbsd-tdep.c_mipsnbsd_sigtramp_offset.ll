; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsnbsd-tdep.c_mipsnbsd_sigtramp_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsnbsd-tdep.c_mipsnbsd_sigtramp_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@sigtramp_retcode_mipseb = common dso_local global i8* null, align 8
@sigtramp_retcode_mipsel = common dso_local global i8* null, align 8
@RETCODE_SIZE = common dso_local global i32 0, align 4
@RETCODE_NWORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mipsnbsd_sigtramp_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipsnbsd_sigtramp_offset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %12 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i8*, i8** @sigtramp_retcode_mipseb, align 8
  br label %18

16:                                               ; preds = %1
  %17 = load i8*, i8** @sigtramp_retcode_mipsel, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i8* [ %15, %14 ], [ %17, %16 ]
  store i8* %19, i8** %4, align 8
  %20 = load i32, i32* @RETCODE_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %5, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %24 = load i32, i32* %3, align 4
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %26 = call i64 @read_memory_nobpt(i32 %24, i8* %25, i32 4)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %72

29:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @RETCODE_NWORDS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = call i64 @memcmp(i8* %35, i8* %40, i32 4)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %48

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %30

48:                                               ; preds = %43, %30
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @RETCODE_NWORDS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %72

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %54, 4
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %3, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = trunc i64 %21 to i32
  %61 = call i64 @read_memory_nobpt(i32 %59, i8* %23, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %72

64:                                               ; preds = %53
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* @RETCODE_SIZE, align 4
  %67 = call i64 @memcmp(i8* %23, i8* %65, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %72

71:                                               ; preds = %64
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %72

72:                                               ; preds = %71, %69, %63, %52, %28
  %73 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @read_memory_nobpt(i32, i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
