; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_valid_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_valid_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMB_HEADER_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @smb_valid_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_valid_packet(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 255
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 5
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 83
  br i1 %11, label %12, label %36

12:                                               ; preds = %7
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 6
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 77
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 7
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 66
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @smb_len(i32* %23)
  %25 = add nsw i64 %24, 4
  %26 = load i64, i64* @SMB_HEADER_LEN, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @SMB_WCT(i32* %27)
  %29 = mul nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %26, %30
  %32 = load i32*, i32** %2, align 8
  %33 = call i64 @smb_bcc(i32* %32)
  %34 = add nsw i64 %31, %33
  %35 = icmp eq i64 %25, %34
  br label %36

36:                                               ; preds = %22, %17, %12, %7, %1
  %37 = phi i1 [ false, %17 ], [ false, %12 ], [ false, %7 ], [ false, %1 ], [ %35, %22 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local i64 @smb_len(i32*) #1

declare dso_local i32 @SMB_WCT(i32*) #1

declare dso_local i64 @smb_bcc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
