; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_cifs_rqst_page_to_kvec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_cifs_rqst_page_to_kvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rqst = type { i32, i32, i32, i32* }
%struct.kvec = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_rqst_page_to_kvec(%struct.smb_rqst* %0, i32 %1, %struct.kvec* %2) #0 {
  %4 = alloca %struct.smb_rqst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvec*, align 8
  store %struct.smb_rqst* %0, %struct.smb_rqst** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.kvec* %2, %struct.kvec** %6, align 8
  %7 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %8 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kmap(i32 %13)
  %15 = load %struct.kvec*, %struct.kvec** %6, align 8
  %16 = getelementptr inbounds %struct.kvec, %struct.kvec* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %19 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %25 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.kvec*, %struct.kvec** %6, align 8
  %28 = getelementptr inbounds %struct.kvec, %struct.kvec* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %35

29:                                               ; preds = %3
  %30 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %31 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.kvec*, %struct.kvec** %6, align 8
  %34 = getelementptr inbounds %struct.kvec, %struct.kvec* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @kmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
