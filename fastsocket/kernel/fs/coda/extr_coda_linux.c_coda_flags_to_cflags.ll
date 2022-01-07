; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_coda_linux.c_coda_flags_to_cflags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_coda_linux.c_coda_flags_to_cflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_ACCMODE = common dso_local global i16 0, align 2
@O_RDONLY = common dso_local global i16 0, align 2
@C_O_READ = common dso_local global i16 0, align 2
@O_RDWR = common dso_local global i16 0, align 2
@C_O_WRITE = common dso_local global i16 0, align 2
@O_WRONLY = common dso_local global i16 0, align 2
@O_TRUNC = common dso_local global i16 0, align 2
@C_O_TRUNC = common dso_local global i16 0, align 2
@O_CREAT = common dso_local global i16 0, align 2
@C_O_CREAT = common dso_local global i16 0, align 2
@O_EXCL = common dso_local global i16 0, align 2
@C_O_EXCL = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @coda_flags_to_cflags(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  store i16 0, i16* %3, align 2
  %4 = load i16, i16* %2, align 2
  %5 = zext i16 %4 to i32
  %6 = load i16, i16* @O_ACCMODE, align 2
  %7 = zext i16 %6 to i32
  %8 = and i32 %5, %7
  %9 = load i16, i16* @O_RDONLY, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i16, i16* @C_O_READ, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* %3, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %16, %14
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %3, align 2
  br label %19

19:                                               ; preds = %12, %1
  %20 = load i16, i16* %2, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @O_ACCMODE, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %21, %23
  %25 = load i16, i16* @O_RDWR, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %19
  %29 = load i16, i16* @C_O_READ, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* @C_O_WRITE, align 2
  %32 = zext i16 %31 to i32
  %33 = or i32 %30, %32
  %34 = load i16, i16* %3, align 2
  %35 = zext i16 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %3, align 2
  br label %38

38:                                               ; preds = %28, %19
  %39 = load i16, i16* %2, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16, i16* @O_ACCMODE, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %40, %42
  %44 = load i16, i16* @O_WRONLY, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load i16, i16* @C_O_WRITE, align 2
  %49 = zext i16 %48 to i32
  %50 = load i16, i16* %3, align 2
  %51 = zext i16 %50 to i32
  %52 = or i32 %51, %49
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %3, align 2
  br label %54

54:                                               ; preds = %47, %38
  %55 = load i16, i16* %2, align 2
  %56 = zext i16 %55 to i32
  %57 = load i16, i16* @O_TRUNC, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load i16, i16* @C_O_TRUNC, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, i16* %3, align 2
  %65 = zext i16 %64 to i32
  %66 = or i32 %65, %63
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %3, align 2
  br label %68

68:                                               ; preds = %61, %54
  %69 = load i16, i16* %2, align 2
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* @O_CREAT, align 2
  %72 = zext i16 %71 to i32
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load i16, i16* @C_O_CREAT, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16, i16* %3, align 2
  %79 = zext i16 %78 to i32
  %80 = or i32 %79, %77
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %3, align 2
  br label %82

82:                                               ; preds = %75, %68
  %83 = load i16, i16* %2, align 2
  %84 = zext i16 %83 to i32
  %85 = load i16, i16* @O_EXCL, align 2
  %86 = zext i16 %85 to i32
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load i16, i16* @C_O_EXCL, align 2
  %91 = zext i16 %90 to i32
  %92 = load i16, i16* %3, align 2
  %93 = zext i16 %92 to i32
  %94 = or i32 %93, %91
  %95 = trunc i32 %94 to i16
  store i16 %95, i16* %3, align 2
  br label %96

96:                                               ; preds = %89, %82
  %97 = load i16, i16* %3, align 2
  ret i16 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
