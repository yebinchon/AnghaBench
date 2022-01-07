; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_cifs_setup_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_cifs_setup_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_q_entry = type { i32 }
%struct.cifs_ses = type { i32 }
%struct.smb_rqst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.smb_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mid_q_entry* @cifs_setup_request(%struct.cifs_ses* %0, %struct.smb_rqst* %1) #0 {
  %3 = alloca %struct.mid_q_entry*, align 8
  %4 = alloca %struct.cifs_ses*, align 8
  %5 = alloca %struct.smb_rqst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_hdr*, align 8
  %8 = alloca %struct.mid_q_entry*, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %4, align 8
  store %struct.smb_rqst* %1, %struct.smb_rqst** %5, align 8
  %9 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %10 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smb_hdr*
  store %struct.smb_hdr* %15, %struct.smb_hdr** %7, align 8
  %16 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %17 = load %struct.smb_hdr*, %struct.smb_hdr** %7, align 8
  %18 = call i32 @allocate_mid(%struct.cifs_ses* %16, %struct.smb_hdr* %17, %struct.mid_q_entry** %8)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.mid_q_entry* @ERR_PTR(i32 %22)
  store %struct.mid_q_entry* %23, %struct.mid_q_entry** %3, align 8
  br label %41

24:                                               ; preds = %2
  %25 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %26 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %27 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  %30 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %29, i32 0, i32 0
  %31 = call i32 @cifs_sign_rqst(%struct.smb_rqst* %25, i32 %28, i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  %36 = call i32 @delete_mid(%struct.mid_q_entry* %35)
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.mid_q_entry* @ERR_PTR(i32 %37)
  store %struct.mid_q_entry* %38, %struct.mid_q_entry** %3, align 8
  br label %41

39:                                               ; preds = %24
  %40 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  store %struct.mid_q_entry* %40, %struct.mid_q_entry** %3, align 8
  br label %41

41:                                               ; preds = %39, %34, %21
  %42 = load %struct.mid_q_entry*, %struct.mid_q_entry** %3, align 8
  ret %struct.mid_q_entry* %42
}

declare dso_local i32 @allocate_mid(%struct.cifs_ses*, %struct.smb_hdr*, %struct.mid_q_entry**) #1

declare dso_local %struct.mid_q_entry* @ERR_PTR(i32) #1

declare dso_local i32 @cifs_sign_rqst(%struct.smb_rqst*, i32, i32*) #1

declare dso_local i32 @delete_mid(%struct.mid_q_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
