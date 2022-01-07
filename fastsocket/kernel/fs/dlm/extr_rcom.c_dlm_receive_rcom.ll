; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_dlm_receive_rcom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_dlm_receive_rcom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_rcom = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"ignoring recovery message %x from %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"receive_rcom bad type %d\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"recovery message %x from %d is too short\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_receive_rcom(%struct.dlm_ls* %0, %struct.dlm_rcom* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_rcom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 12, i32* %7, align 4
  %8 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %9 = call i64 @dlm_recovery_stopped(%struct.dlm_ls* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %13 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 129
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %18 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %19 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @log_debug(%struct.dlm_ls* %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %88

23:                                               ; preds = %11, %3
  %24 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %25 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %26 = call i64 @is_old_reply(%struct.dlm_ls* %24, %struct.dlm_rcom* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %88

29:                                               ; preds = %23
  %30 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %31 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %81 [
    i32 129, label %33
    i32 131, label %37
    i32 133, label %41
    i32 135, label %45
    i32 128, label %57
    i32 130, label %61
    i32 132, label %65
    i32 134, label %69
  ]

33:                                               ; preds = %29
  %34 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %35 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %36 = call i32 @receive_rcom_status(%struct.dlm_ls* %34, %struct.dlm_rcom* %35)
  br label %87

37:                                               ; preds = %29
  %38 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %39 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %40 = call i32 @receive_rcom_names(%struct.dlm_ls* %38, %struct.dlm_rcom* %39)
  br label %87

41:                                               ; preds = %29
  %42 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %43 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %44 = call i32 @receive_rcom_lookup(%struct.dlm_ls* %42, %struct.dlm_rcom* %43)
  br label %87

45:                                               ; preds = %29
  %46 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %47 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %89

53:                                               ; preds = %45
  %54 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %55 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %56 = call i32 @receive_rcom_lock(%struct.dlm_ls* %54, %struct.dlm_rcom* %55)
  br label %87

57:                                               ; preds = %29
  %58 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %59 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %60 = call i32 @receive_sync_reply(%struct.dlm_ls* %58, %struct.dlm_rcom* %59)
  br label %87

61:                                               ; preds = %29
  %62 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %63 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %64 = call i32 @receive_sync_reply(%struct.dlm_ls* %62, %struct.dlm_rcom* %63)
  br label %87

65:                                               ; preds = %29
  %66 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %67 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %68 = call i32 @receive_rcom_lookup_reply(%struct.dlm_ls* %66, %struct.dlm_rcom* %67)
  br label %87

69:                                               ; preds = %29
  %70 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %71 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %89

77:                                               ; preds = %69
  %78 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %79 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %80 = call i32 @dlm_recover_process_copy(%struct.dlm_ls* %78, %struct.dlm_rcom* %79)
  br label %87

81:                                               ; preds = %29
  %82 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %83 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %84 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.dlm_ls*, i8*, i32, ...) @log_error(%struct.dlm_ls* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %81, %77, %65, %61, %57, %53, %41, %37, %33
  br label %88

88:                                               ; preds = %87, %28, %16
  br label %96

89:                                               ; preds = %76, %52
  %90 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %91 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %92 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 (%struct.dlm_ls*, i8*, i32, ...) @log_error(%struct.dlm_ls* %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %89, %88
  ret void
}

declare dso_local i64 @dlm_recovery_stopped(%struct.dlm_ls*) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i32) #1

declare dso_local i64 @is_old_reply(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @receive_rcom_status(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @receive_rcom_names(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @receive_rcom_lookup(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @receive_rcom_lock(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @receive_sync_reply(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @receive_rcom_lookup_reply(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @dlm_recover_process_copy(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
