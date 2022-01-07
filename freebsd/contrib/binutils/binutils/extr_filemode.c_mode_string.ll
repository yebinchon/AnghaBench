; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_filemode.c_mode_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_filemode.c_mode_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IRUSR = common dso_local global i64 0, align 8
@S_IWUSR = common dso_local global i64 0, align 8
@S_IXUSR = common dso_local global i64 0, align 8
@S_IRGRP = common dso_local global i64 0, align 8
@S_IWGRP = common dso_local global i64 0, align 8
@S_IXGRP = common dso_local global i64 0, align 8
@S_IROTH = common dso_local global i64 0, align 8
@S_IWOTH = common dso_local global i64 0, align 8
@S_IXOTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mode_string(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call signext i8 @ftypelet(i64 %5)
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 %6, i8* %8, align 1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @S_IRUSR, align 8
  %11 = and i64 %9, %10
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 114, i32 45
  %15 = trunc i32 %14 to i8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 %15, i8* %17, align 1
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @S_IWUSR, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 119, i32 45
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  store i8 %24, i8* %26, align 1
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @S_IXUSR, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 120, i32 45
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  store i8 %33, i8* %35, align 1
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @S_IRGRP, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 114, i32 45
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  store i8 %42, i8* %44, align 1
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @S_IWGRP, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 119, i32 45
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 5
  store i8 %51, i8* %53, align 1
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @S_IXGRP, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 120, i32 45
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 6
  store i8 %60, i8* %62, align 1
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* @S_IROTH, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 114, i32 45
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 7
  store i8 %69, i8* %71, align 1
  %72 = load i64, i64* %3, align 8
  %73 = load i64, i64* @S_IWOTH, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 119, i32 45
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 8
  store i8 %78, i8* %80, align 1
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @S_IXOTH, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 120, i32 45
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 9
  store i8 %87, i8* %89, align 1
  %90 = load i64, i64* %3, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @setst(i64 %90, i8* %91)
  ret void
}

declare dso_local signext i8 @ftypelet(i64) #1

declare dso_local i32 @setst(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
