; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_vlclient.c_afs_vl_abort_to_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_vlclient.c_afs_vl_abort_to_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EBADRQC = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @afs_vl_abort_to_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_vl_abort_to_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %91 [
    i32 138, label %7
    i32 137, label %10
    i32 136, label %13
    i32 144, label %16
    i32 135, label %19
    i32 142, label %22
    i32 141, label %25
    i32 153, label %28
    i32 154, label %31
    i32 145, label %34
    i32 149, label %37
    i32 152, label %40
    i32 131, label %43
    i32 133, label %46
    i32 143, label %49
    i32 129, label %52
    i32 151, label %55
    i32 128, label %58
    i32 155, label %61
    i32 147, label %64
    i32 139, label %67
    i32 140, label %70
    i32 146, label %73
    i32 150, label %76
    i32 130, label %79
    i32 148, label %82
    i32 132, label %85
    i32 134, label %88
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @EEXIST, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %94

10:                                               ; preds = %1
  %11 = load i32, i32* @EREMOTEIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %94

13:                                               ; preds = %1
  %14 = load i32, i32* @EEXIST, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %94

16:                                               ; preds = %1
  %17 = load i32, i32* @EREMOTEIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %94

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEDIUM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %94

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEDIUM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %94

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEDIUM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %94

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %94

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %94

34:                                               ; preds = %1
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %94

37:                                               ; preds = %1
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %94

40:                                               ; preds = %1
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %94

43:                                               ; preds = %1
  %44 = load i32, i32* @EFBIG, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %94

46:                                               ; preds = %1
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %94

49:                                               ; preds = %1
  %50 = load i32, i32* @EEXIST, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %94

52:                                               ; preds = %1
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %94

55:                                               ; preds = %1
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %94

58:                                               ; preds = %1
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %94

61:                                               ; preds = %1
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %94

64:                                               ; preds = %1
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %94

67:                                               ; preds = %1
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %94

70:                                               ; preds = %1
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %94

73:                                               ; preds = %1
  %74 = load i32, i32* @EBADRQC, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %94

76:                                               ; preds = %1
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %94

79:                                               ; preds = %1
  %80 = load i32, i32* @EREMOTEIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %94

82:                                               ; preds = %1
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %94

85:                                               ; preds = %1
  %86 = load i32, i32* @EACCES, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %94

88:                                               ; preds = %1
  %89 = load i32, i32* @EREMOTEIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %94

91:                                               ; preds = %1
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @afs_abort_to_error(i32 %92)
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @afs_abort_to_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
