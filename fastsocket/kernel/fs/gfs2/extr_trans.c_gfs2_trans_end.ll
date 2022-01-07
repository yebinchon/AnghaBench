; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_trans.c_gfs2_trans_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_trans.c_gfs2_trans_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.gfs2_sbd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@MS_SYNCHRONOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_trans_end(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca %struct.gfs2_sbd*, align 8
  %3 = alloca %struct.gfs2_trans*, align 8
  %4 = alloca i64, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.gfs2_trans*, %struct.gfs2_trans** %6, align 8
  store %struct.gfs2_trans* %7, %struct.gfs2_trans** %3, align 8
  %8 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %9 = icmp ne %struct.gfs2_trans* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store %struct.gfs2_trans* null, %struct.gfs2_trans** %14, align 8
  %15 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %16 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %1
  %20 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %21 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %22 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @gfs2_log_release(%struct.gfs2_sbd* %20, i32 %23)
  %25 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %26 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %32 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %31, i32 0, i32 7
  %33 = call i32 @gfs2_glock_dq(%struct.TYPE_6__* %32)
  %34 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %35 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %34, i32 0, i32 7
  %36 = call i32 @gfs2_holder_uninit(%struct.TYPE_6__* %35)
  %37 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %38 = call i32 @kfree(%struct.gfs2_trans* %37)
  br label %39

39:                                               ; preds = %30, %19
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %41 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = call i32 @sb_end_intwrite(%struct.TYPE_5__* %42)
  br label %119

44:                                               ; preds = %1
  %45 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %46 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %49 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  store i64 %51, i64* %4, align 8
  %52 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %53 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = sub nsw i64 %55, %54
  store i64 %56, i64* %4, align 8
  %57 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %58 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = sub nsw i64 %60, %59
  store i64 %61, i64* %4, align 8
  %62 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %65 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %44
  %69 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %70 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %73 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %71, %74
  br label %76

76:                                               ; preds = %68, %44
  %77 = phi i1 [ false, %44 ], [ %75, %68 ]
  %78 = zext i1 %77 to i32
  %79 = call i64 @gfs2_assert_withdraw(%struct.gfs2_sbd* %62, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %83 = call i32 @gfs2_print_trans(%struct.gfs2_trans* %82)
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %86 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %87 = call i32 @gfs2_log_commit(%struct.gfs2_sbd* %85, %struct.gfs2_trans* %86)
  %88 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %89 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %84
  %94 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %95 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %94, i32 0, i32 7
  %96 = call i32 @gfs2_glock_dq(%struct.TYPE_6__* %95)
  %97 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %98 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %97, i32 0, i32 7
  %99 = call i32 @gfs2_holder_uninit(%struct.TYPE_6__* %98)
  %100 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %101 = call i32 @kfree(%struct.gfs2_trans* %100)
  br label %102

102:                                              ; preds = %93, %84
  %103 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %104 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @MS_SYNCHRONOUS, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %113 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %112, i32* null)
  br label %114

114:                                              ; preds = %111, %102
  %115 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %116 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = call i32 @sb_end_intwrite(%struct.TYPE_5__* %117)
  br label %119

119:                                              ; preds = %114, %39
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gfs2_log_release(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_glock_dq(%struct.TYPE_6__*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.gfs2_trans*) #1

declare dso_local i32 @sb_end_intwrite(%struct.TYPE_5__*) #1

declare dso_local i64 @gfs2_assert_withdraw(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_print_trans(%struct.gfs2_trans*) #1

declare dso_local i32 @gfs2_log_commit(%struct.gfs2_sbd*, %struct.gfs2_trans*) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
