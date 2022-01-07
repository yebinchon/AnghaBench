; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_cifs_call_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_cifs_call_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32, i32, i32 }
%struct.smb_rqst = type { i32 }
%struct.mid_q_entry = type { i32, i32, i8*, i32*, i32* }

@CIFS_ASYNC_OP = common dso_local global i32 0, align 4
@MID_REQUEST_SUBMITTED = common dso_local global i32 0, align 4
@GlobalMid_Lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_call_async(%struct.TCP_Server_Info* %0, %struct.smb_rqst* %1, i32* %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TCP_Server_Info*, align 8
  %9 = alloca %struct.smb_rqst*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mid_q_entry*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %8, align 8
  store %struct.smb_rqst* %1, %struct.smb_rqst** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @CIFS_ASYNC_OP, align 4
  br label %22

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = call i32 @wait_for_free_request(%struct.TCP_Server_Info* %16, i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %7, align 4
  br label %102

29:                                               ; preds = %22
  %30 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %31 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %30, i32 0, i32 2
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %34 = load %struct.smb_rqst*, %struct.smb_rqst** %9, align 8
  %35 = call %struct.mid_q_entry* @cifs_setup_async_request(%struct.TCP_Server_Info* %33, %struct.smb_rqst* %34)
  store %struct.mid_q_entry* %35, %struct.mid_q_entry** %15, align 8
  %36 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %37 = call i64 @IS_ERR(%struct.mid_q_entry* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %29
  %40 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %41 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %40, i32 0, i32 2
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %44 = call i32 @cifs_add_credits(%struct.TCP_Server_Info* %43, i32 1)
  %45 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %46 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %45, i32 0, i32 1
  %47 = call i32 @wake_up(i32* %46)
  %48 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %49 = call i32 @PTR_ERR(%struct.mid_q_entry* %48)
  store i32 %49, i32* %7, align 4
  br label %102

50:                                               ; preds = %29
  %51 = load i32*, i32** %10, align 8
  %52 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %53 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %52, i32 0, i32 4
  store i32* %51, i32** %53, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %56 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %55, i32 0, i32 3
  store i32* %54, i32** %56, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %59 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @MID_REQUEST_SUBMITTED, align 4
  %61 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %62 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %64 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %65 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %64, i32 0, i32 0
  %66 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %67 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %66, i32 0, i32 3
  %68 = call i32 @list_add_tail(i32* %65, i32* %67)
  %69 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  %70 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %71 = call i32 @cifs_in_send_inc(%struct.TCP_Server_Info* %70)
  %72 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %73 = load %struct.smb_rqst*, %struct.smb_rqst** %9, align 8
  %74 = call i32 @smb_send_rqst(%struct.TCP_Server_Info* %72, %struct.smb_rqst* %73)
  store i32 %74, i32* %14, align 4
  %75 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %76 = call i32 @cifs_in_send_dec(%struct.TCP_Server_Info* %75)
  %77 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %78 = call i32 @cifs_save_when_sent(%struct.mid_q_entry* %77)
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %50
  %82 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %83 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 2
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %81, %50
  %87 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %88 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %87, i32 0, i32 2
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %14, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %7, align 4
  br label %102

93:                                               ; preds = %86
  %94 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %95 = call i32 @delete_mid(%struct.mid_q_entry* %94)
  %96 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %97 = call i32 @cifs_add_credits(%struct.TCP_Server_Info* %96, i32 1)
  %98 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %99 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %98, i32 0, i32 1
  %100 = call i32 @wake_up(i32* %99)
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %93, %92, %39, %27
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @wait_for_free_request(%struct.TCP_Server_Info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mid_q_entry* @cifs_setup_async_request(%struct.TCP_Server_Info*, %struct.smb_rqst*) #1

declare dso_local i64 @IS_ERR(%struct.mid_q_entry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cifs_add_credits(%struct.TCP_Server_Info*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.mid_q_entry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_in_send_inc(%struct.TCP_Server_Info*) #1

declare dso_local i32 @smb_send_rqst(%struct.TCP_Server_Info*, %struct.smb_rqst*) #1

declare dso_local i32 @cifs_in_send_dec(%struct.TCP_Server_Info*) #1

declare dso_local i32 @cifs_save_when_sent(%struct.mid_q_entry*) #1

declare dso_local i32 @delete_mid(%struct.mid_q_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
