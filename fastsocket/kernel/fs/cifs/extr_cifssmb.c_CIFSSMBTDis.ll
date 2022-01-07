; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSSMBTDis.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSSMBTDis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32* }
%struct.smb_hdr = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"In tree disconnect\00", align 1
@EIO = common dso_local global i32 0, align 4
@SMB_COM_TREE_DISCONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Tree disconnect failed %d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBTDis(i32 %0, %struct.cifs_tcon* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_tcon*, align 8
  %6 = alloca %struct.smb_hdr*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %10 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %15 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %13, %2
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %66

23:                                               ; preds = %13
  %24 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %25 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %30 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %23
  store i32 0, i32* %3, align 4
  br label %66

36:                                               ; preds = %28
  %37 = load i32, i32* @SMB_COM_TREE_DISCONNECT, align 4
  %38 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %39 = bitcast %struct.smb_hdr** %6 to i8**
  %40 = call i32 @small_smb_init(i32 %37, i32 0, %struct.cifs_tcon* %38, i8** %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %66

45:                                               ; preds = %36
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %48 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %51 = bitcast %struct.smb_hdr* %50 to i8*
  %52 = call i32 @SendReceiveNoRsp(i32 %46, %struct.TYPE_2__* %49, i8* %51, i32 0)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %45
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %43, %35, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @small_smb_init(i32, i32, %struct.cifs_tcon*, i8**) #1

declare dso_local i32 @SendReceiveNoRsp(i32, %struct.TYPE_2__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
