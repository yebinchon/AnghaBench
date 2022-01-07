; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_appnd_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_appnd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exit_val = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Cannot append to an archive that may have flaws.\00", align 1
@wrblksz = common dso_local global i64 0, align 8
@rdblksz = common dso_local global i64 0, align 8
@blksz = common dso_local global i64 0, align 8
@bufend = common dso_local global i64 0, align 8
@bufpt = common dso_local global i64 0, align 8
@buf = common dso_local global i64 0, align 8
@rdcnt = common dso_local global i64 0, align 8
@wrcnt = common dso_local global i64 0, align 8
@ARCHIVE = common dso_local global i32 0, align 4
@act = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Unable to rewrite archive trailer, cannot append.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @appnd_start(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* @exit_val, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @paxwarn(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %99

10:                                               ; preds = %1
  %11 = load i64, i64* @wrblksz, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* @rdblksz, align 8
  store i64 %14, i64* @blksz, align 8
  store i64 %14, i64* @wrblksz, align 8
  br label %17

15:                                               ; preds = %10
  %16 = load i64, i64* @rdblksz, align 8
  store i64 %16, i64* @blksz, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = call i64 (...) @ar_app_ok()
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %99

21:                                               ; preds = %17
  %22 = load i64, i64* @bufend, align 8
  %23 = load i64, i64* @bufpt, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i64, i64* %3, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @blksz, align 8
  %29 = sdiv i64 %27, %28
  %30 = load i64, i64* @blksz, align 8
  %31 = mul nsw i64 %29, %30
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load i64, i64* @blksz, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %34, %21
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @ar_rev(i64 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %97

43:                                               ; preds = %38
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = sub nsw i64 %45, %44
  store i64 %46, i64* %5, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %43
  %49 = load i64, i64* @buf, align 8
  store i64 %49, i64* @bufpt, align 8
  %50 = load i64, i64* @buf, align 8
  %51 = load i64, i64* @blksz, align 8
  %52 = add nsw i64 %50, %51
  store i64 %52, i64* @bufend, align 8
  br label %53

53:                                               ; preds = %63, %48
  %54 = load i64, i64* @bufpt, align 8
  %55 = load i64, i64* @bufend, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i64, i64* @bufpt, align 8
  %59 = load i64, i64* @rdblksz, align 8
  %60 = call i32 @ar_read(i64 %58, i64 %59)
  store i32 %60, i32* %4, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %97

63:                                               ; preds = %57
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @bufpt, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* @bufpt, align 8
  br label %53

68:                                               ; preds = %53
  %69 = load i64, i64* @bufpt, align 8
  %70 = load i64, i64* @buf, align 8
  %71 = sub nsw i64 %69, %70
  %72 = call i64 @ar_rev(i64 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %97

75:                                               ; preds = %68
  %76 = load i64, i64* @buf, align 8
  %77 = load i64, i64* %5, align 8
  %78 = add nsw i64 %76, %77
  store i64 %78, i64* @bufpt, align 8
  %79 = load i64, i64* @buf, align 8
  %80 = load i64, i64* @blksz, align 8
  %81 = add nsw i64 %79, %80
  store i64 %81, i64* @bufend, align 8
  br label %87

82:                                               ; preds = %43
  %83 = load i64, i64* @buf, align 8
  %84 = load i64, i64* @blksz, align 8
  %85 = add nsw i64 %83, %84
  store i64 %85, i64* @bufend, align 8
  %86 = load i64, i64* @buf, align 8
  store i64 %86, i64* @bufpt, align 8
  br label %87

87:                                               ; preds = %82, %75
  %88 = load i64, i64* @blksz, align 8
  store i64 %88, i64* @rdblksz, align 8
  %89 = load i64, i64* %3, align 8
  %90 = load i64, i64* @rdcnt, align 8
  %91 = sub nsw i64 %90, %89
  store i64 %91, i64* @rdcnt, align 8
  store i64 0, i64* @wrcnt, align 8
  %92 = call i64 (...) @ar_set_wr()
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 -1, i32* %2, align 4
  br label %99

95:                                               ; preds = %87
  %96 = load i32, i32* @ARCHIVE, align 4
  store i32 %96, i32* @act, align 4
  store i32 0, i32* %2, align 4
  br label %99

97:                                               ; preds = %74, %62, %42
  %98 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %95, %94, %20, %8
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @paxwarn(i32, i8*) #1

declare dso_local i64 @ar_app_ok(...) #1

declare dso_local i64 @ar_rev(i64) #1

declare dso_local i32 @ar_read(i64, i64) #1

declare dso_local i64 @ar_set_wr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
