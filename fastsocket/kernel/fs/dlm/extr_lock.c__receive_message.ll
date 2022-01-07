; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c__receive_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c__receive_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_message = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"ignore non-member message %d from %d %x %x %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown message type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_message*)* @_receive_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_receive_message(%struct.dlm_ls* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_message*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %4, align 8
  %5 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %6 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %7 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dlm_is_member(%struct.dlm_ls* %5, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %2
  %13 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %14 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %18 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %22 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %25 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %28 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @log_debug(%struct.dlm_ls* %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i32 %23, i32 %26, i32 %29)
  br label %99

31:                                               ; preds = %2
  %32 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %33 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %91 [
    i32 131, label %35
    i32 138, label %39
    i32 129, label %43
    i32 140, label %47
    i32 130, label %51
    i32 137, label %55
    i32 128, label %59
    i32 139, label %63
    i32 136, label %67
    i32 141, label %71
    i32 135, label %75
    i32 132, label %79
    i32 134, label %83
    i32 133, label %87
  ]

35:                                               ; preds = %31
  %36 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %37 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %38 = call i32 @receive_request(%struct.dlm_ls* %36, %struct.dlm_message* %37)
  br label %97

39:                                               ; preds = %31
  %40 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %41 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %42 = call i32 @receive_convert(%struct.dlm_ls* %40, %struct.dlm_message* %41)
  br label %97

43:                                               ; preds = %31
  %44 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %45 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %46 = call i32 @receive_unlock(%struct.dlm_ls* %44, %struct.dlm_message* %45)
  br label %97

47:                                               ; preds = %31
  %48 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %49 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %50 = call i32 @receive_cancel(%struct.dlm_ls* %48, %struct.dlm_message* %49)
  br label %97

51:                                               ; preds = %31
  %52 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %53 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %54 = call i32 @receive_request_reply(%struct.dlm_ls* %52, %struct.dlm_message* %53)
  br label %97

55:                                               ; preds = %31
  %56 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %57 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %58 = call i32 @receive_convert_reply(%struct.dlm_ls* %56, %struct.dlm_message* %57)
  br label %97

59:                                               ; preds = %31
  %60 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %61 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %62 = call i32 @receive_unlock_reply(%struct.dlm_ls* %60, %struct.dlm_message* %61)
  br label %97

63:                                               ; preds = %31
  %64 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %65 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %66 = call i32 @receive_cancel_reply(%struct.dlm_ls* %64, %struct.dlm_message* %65)
  br label %97

67:                                               ; preds = %31
  %68 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %69 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %70 = call i32 @receive_grant(%struct.dlm_ls* %68, %struct.dlm_message* %69)
  br label %97

71:                                               ; preds = %31
  %72 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %73 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %74 = call i32 @receive_bast(%struct.dlm_ls* %72, %struct.dlm_message* %73)
  br label %97

75:                                               ; preds = %31
  %76 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %77 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %78 = call i32 @receive_lookup(%struct.dlm_ls* %76, %struct.dlm_message* %77)
  br label %97

79:                                               ; preds = %31
  %80 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %81 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %82 = call i32 @receive_remove(%struct.dlm_ls* %80, %struct.dlm_message* %81)
  br label %97

83:                                               ; preds = %31
  %84 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %85 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %86 = call i32 @receive_lookup_reply(%struct.dlm_ls* %84, %struct.dlm_message* %85)
  br label %97

87:                                               ; preds = %31
  %88 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %89 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %90 = call i32 @receive_purge(%struct.dlm_ls* %88, %struct.dlm_message* %89)
  br label %97

91:                                               ; preds = %31
  %92 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %93 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %94 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @log_error(%struct.dlm_ls* %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35
  %98 = call i32 (...) @dlm_astd_wake()
  br label %99

99:                                               ; preds = %97, %12
  ret void
}

declare dso_local i32 @dlm_is_member(%struct.dlm_ls*, i32) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @receive_request(%struct.dlm_ls*, %struct.dlm_message*) #1

declare dso_local i32 @receive_convert(%struct.dlm_ls*, %struct.dlm_message*) #1

declare dso_local i32 @receive_unlock(%struct.dlm_ls*, %struct.dlm_message*) #1

declare dso_local i32 @receive_cancel(%struct.dlm_ls*, %struct.dlm_message*) #1

declare dso_local i32 @receive_request_reply(%struct.dlm_ls*, %struct.dlm_message*) #1

declare dso_local i32 @receive_convert_reply(%struct.dlm_ls*, %struct.dlm_message*) #1

declare dso_local i32 @receive_unlock_reply(%struct.dlm_ls*, %struct.dlm_message*) #1

declare dso_local i32 @receive_cancel_reply(%struct.dlm_ls*, %struct.dlm_message*) #1

declare dso_local i32 @receive_grant(%struct.dlm_ls*, %struct.dlm_message*) #1

declare dso_local i32 @receive_bast(%struct.dlm_ls*, %struct.dlm_message*) #1

declare dso_local i32 @receive_lookup(%struct.dlm_ls*, %struct.dlm_message*) #1

declare dso_local i32 @receive_remove(%struct.dlm_ls*, %struct.dlm_message*) #1

declare dso_local i32 @receive_lookup_reply(%struct.dlm_ls*, %struct.dlm_message*) #1

declare dso_local i32 @receive_purge(%struct.dlm_ls*, %struct.dlm_message*) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i32) #1

declare dso_local i32 @dlm_astd_wake(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
