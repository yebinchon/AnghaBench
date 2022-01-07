; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_validate_t2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_validate_t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_t2_rsp = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@CIFSMaxBufSize = common dso_local global i32 0, align 4
@MAX_CIFS_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid transact2 SMB: \00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_t2_rsp*)* @validate_t2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_t2(%struct.smb_t2_rsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_t2_rsp*, align 8
  %4 = alloca i32, align 4
  store %struct.smb_t2_rsp* %0, %struct.smb_t2_rsp** %3, align 8
  %5 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %3, align 8
  %6 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %3, align 8
  %13 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = call i32 @get_unaligned_le16(i32* %14)
  %16 = icmp ugt i32 %15, 1024
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %3, align 8
  %19 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = call i32 @get_unaligned_le16(i32* %20)
  %22 = icmp ugt i32 %21, 1024
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %11
  br label %52

24:                                               ; preds = %17
  %25 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %3, align 8
  %26 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = call i32 @get_unaligned_le16(i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp uge i32 %29, 512
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %52

32:                                               ; preds = %24
  %33 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %3, align 8
  %34 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @get_unaligned_le16(i32* %35)
  %37 = load i32, i32* %4, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %3, align 8
  %41 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %40, i32 0, i32 0
  %42 = call i32 @get_bcc(%struct.TYPE_4__* %41)
  %43 = icmp ugt i32 %39, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @CIFSMaxBufSize, align 4
  %47 = load i32, i32* @MAX_CIFS_HDR_SIZE, align 4
  %48 = add i32 %46, %47
  %49 = icmp uge i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %32
  br label %52

51:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %58

52:                                               ; preds = %50, %31, %23, %10
  %53 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %3, align 8
  %54 = bitcast %struct.smb_t2_rsp* %53 to i8*
  %55 = call i32 @cifs_dump_mem(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %54, i32 36)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %51
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @get_bcc(%struct.TYPE_4__*) #1

declare dso_local i32 @cifs_dump_mem(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
