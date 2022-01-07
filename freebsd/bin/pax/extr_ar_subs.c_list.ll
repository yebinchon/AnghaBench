; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_subs.c_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_subs.c_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 (...)*, i64 (...)*, i32 (...)* }
%struct.TYPE_9__ = type { i64, i64 }

@frmt = common dso_local global %struct.TYPE_10__* null, align 8
@vflag = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@s_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %1, align 8
  %5 = call i64 (...) @get_arc()
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @frmt, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64 (...)*, i64 (...)** %9, align 8
  %11 = call i64 (...) %10()
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @frmt, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i64 (...)*, i64 (...)** %15, align 8
  %17 = call i64 (...) %16()
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %7, %0
  br label %88

20:                                               ; preds = %13
  %21 = load i64, i64* @vflag, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = call i64 (...) @uidtb_start()
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = call i64 (...) @gidtb_start()
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23
  br label %88

30:                                               ; preds = %26, %20
  %31 = call i32 @time(i32* null)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %78, %30
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %34 = call i64 @next_head(%struct.TYPE_9__* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %79

36:                                               ; preds = %32
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %38 = call i32 @pat_match(%struct.TYPE_9__* %37)
  store i32 %38, i32* %2, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %79

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %41
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %46 = call i64 @sel_chk(%struct.TYPE_9__* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %50 = call i64 @pat_sel(%struct.TYPE_9__* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %79

53:                                               ; preds = %48
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %55 = call i32 @mod_name(%struct.TYPE_9__* %54)
  store i32 %55, i32* %2, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %79

58:                                               ; preds = %53
  %59 = load i32, i32* %2, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @stdout, align 4
  %65 = call i32 @ls_list(%struct.TYPE_9__* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %58
  br label %67

67:                                               ; preds = %66, %44, %41
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = call i32 @rd_skip(i64 %74)
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %79

78:                                               ; preds = %67
  br label %32

79:                                               ; preds = %77, %57, %52, %40, %32
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** @frmt, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i32 (...)*, i32 (...)** %81, align 8
  %83 = call i32 (...) %82()
  %84 = load i32, i32* @SIG_BLOCK, align 4
  %85 = call i32 @sigprocmask(i32 %84, i32* @s_mask, i32* null)
  %86 = call i32 (...) @ar_close()
  %87 = call i32 (...) @pat_chk()
  br label %88

88:                                               ; preds = %79, %29, %19
  ret void
}

declare dso_local i64 @get_arc(...) #1

declare dso_local i64 @uidtb_start(...) #1

declare dso_local i64 @gidtb_start(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @next_head(%struct.TYPE_9__*) #1

declare dso_local i32 @pat_match(%struct.TYPE_9__*) #1

declare dso_local i64 @sel_chk(%struct.TYPE_9__*) #1

declare dso_local i64 @pat_sel(%struct.TYPE_9__*) #1

declare dso_local i32 @mod_name(%struct.TYPE_9__*) #1

declare dso_local i32 @ls_list(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @rd_skip(i64) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @ar_close(...) #1

declare dso_local i32 @pat_chk(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
