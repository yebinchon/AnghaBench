; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_cmdq_addcmdpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_cmdq_addcmdpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.slic_cmdqueue, %struct.slic_cmdqueue, %struct.slic_handle* }
%struct.slic_cmdqueue = type { i32, %struct.TYPE_6__, %struct.slic_hostcmd* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.slic_hostcmd = type { i32, %struct.slic_hostcmd*, %struct.slic_hostcmd*, i8*, i8*, %struct.TYPE_4__, %struct.slic_handle* }
%struct.TYPE_4__ = type { i32 }
%struct.slic_handle = type { %struct.TYPE_5__, i32*, i32*, i64, i8*, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@SLIC_CMDQ_CMDSINPAGE = common dso_local global i32 0, align 4
@SLIC_HANDLE_CMD = common dso_local global i32 0, align 4
@SLIC_HOSTCMD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i8**)* @slic_cmdq_addcmdpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_cmdq_addcmdpage(%struct.adapter* %0, i8** %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.slic_hostcmd*, align 8
  %6 = alloca %struct.slic_hostcmd*, align 8
  %7 = alloca %struct.slic_hostcmd*, align 8
  %8 = alloca %struct.slic_cmdqueue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.slic_handle*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i8** %1, i8*** %4, align 8
  %15 = load i8**, i8*** %4, align 8
  %16 = bitcast i8** %15 to i8*
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to %struct.slic_hostcmd*
  store %struct.slic_hostcmd* %18, %struct.slic_hostcmd** %5, align 8
  store i32 0, i32* %9, align 4
  %19 = load i8**, i8*** %4, align 8
  %20 = bitcast i8** %19 to i8*
  %21 = call i32 @virt_to_bus(i8* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i8* @SLIC_GET_ADDR_LOW(i32 %22)
  store i8* %23, i8** %12, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i8* @SLIC_GET_ADDR_HIGH(i32 %24)
  store i8* %25, i8** %13, align 8
  store %struct.slic_hostcmd* null, %struct.slic_hostcmd** %6, align 8
  %26 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %5, align 8
  store %struct.slic_hostcmd* %26, %struct.slic_hostcmd** %7, align 8
  br label %27

27:                                               ; preds = %46, %2
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @SLIC_CMDQ_CMDSINPAGE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 256
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i1 [ false, %27 ], [ %35, %31 ]
  br i1 %37, label %38, label %112

38:                                               ; preds = %36
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = load %struct.slic_handle*, %struct.slic_handle** %14, align 8
  %41 = call i32 @SLIC_GET_SLIC_HANDLE(%struct.adapter* %39, %struct.slic_handle* %40)
  %42 = load %struct.slic_handle*, %struct.slic_handle** %14, align 8
  %43 = icmp eq %struct.slic_handle* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @ASSERT(i32 0)
  br label %46

46:                                               ; preds = %44, %38
  %47 = load %struct.slic_handle*, %struct.slic_handle** %14, align 8
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 3
  %50 = load %struct.slic_handle*, %struct.slic_handle** %49, align 8
  %51 = load %struct.slic_handle*, %struct.slic_handle** %14, align 8
  %52 = getelementptr inbounds %struct.slic_handle, %struct.slic_handle* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.slic_handle, %struct.slic_handle* %50, i64 %54
  %56 = icmp eq %struct.slic_handle* %47, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load i32, i32* @SLIC_HANDLE_CMD, align 4
  %60 = load %struct.slic_handle*, %struct.slic_handle** %14, align 8
  %61 = getelementptr inbounds %struct.slic_handle, %struct.slic_handle* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %5, align 8
  %63 = bitcast %struct.slic_hostcmd* %62 to i8*
  %64 = load %struct.slic_handle*, %struct.slic_handle** %14, align 8
  %65 = getelementptr inbounds %struct.slic_handle, %struct.slic_handle* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.adapter*, %struct.adapter** %3, align 8
  %67 = getelementptr inbounds %struct.adapter, %struct.adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = sext i32 %68 to i64
  %71 = load %struct.slic_handle*, %struct.slic_handle** %14, align 8
  %72 = getelementptr inbounds %struct.slic_handle, %struct.slic_handle* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load %struct.slic_handle*, %struct.slic_handle** %14, align 8
  %74 = getelementptr inbounds %struct.slic_handle, %struct.slic_handle* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.slic_handle*, %struct.slic_handle** %14, align 8
  %76 = getelementptr inbounds %struct.slic_handle, %struct.slic_handle* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  %77 = load %struct.slic_handle*, %struct.slic_handle** %14, align 8
  %78 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %5, align 8
  %79 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %78, i32 0, i32 6
  store %struct.slic_handle* %77, %struct.slic_handle** %79, align 8
  %80 = load %struct.slic_handle*, %struct.slic_handle** %14, align 8
  %81 = getelementptr inbounds %struct.slic_handle, %struct.slic_handle* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %5, align 8
  %85 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %5, align 8
  %88 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %5, align 8
  %91 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %5, align 8
  %94 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %6, align 8
  %96 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %5, align 8
  %97 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %96, i32 0, i32 2
  store %struct.slic_hostcmd* %95, %struct.slic_hostcmd** %97, align 8
  %98 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %6, align 8
  %99 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %5, align 8
  %100 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %99, i32 0, i32 1
  store %struct.slic_hostcmd* %98, %struct.slic_hostcmd** %100, align 8
  %101 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %5, align 8
  store %struct.slic_hostcmd* %101, %struct.slic_hostcmd** %6, align 8
  %102 = load i64, i64* @SLIC_HOSTCMD_SIZE, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = getelementptr i8, i8* %103, i64 %102
  store i8* %104, i8** %12, align 8
  %105 = load i64, i64* @SLIC_HOSTCMD_SIZE, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr i8, i8* %106, i64 %105
  store i8* %107, i8** %10, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = bitcast i8* %108 to %struct.slic_hostcmd*
  store %struct.slic_hostcmd* %109, %struct.slic_hostcmd** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %27

112:                                              ; preds = %36
  %113 = load %struct.adapter*, %struct.adapter** %3, align 8
  %114 = getelementptr inbounds %struct.adapter, %struct.adapter* %113, i32 0, i32 2
  store %struct.slic_cmdqueue* %114, %struct.slic_cmdqueue** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %8, align 8
  %117 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %8, align 8
  %121 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %120, i32 0, i32 2
  %122 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %121, align 8
  %123 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %7, align 8
  %124 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %123, i32 0, i32 2
  store %struct.slic_hostcmd* %122, %struct.slic_hostcmd** %124, align 8
  %125 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %6, align 8
  %126 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %8, align 8
  %127 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %126, i32 0, i32 2
  store %struct.slic_hostcmd* %125, %struct.slic_hostcmd** %127, align 8
  %128 = load %struct.adapter*, %struct.adapter** %3, align 8
  %129 = getelementptr inbounds %struct.adapter, %struct.adapter* %128, i32 0, i32 1
  store %struct.slic_cmdqueue* %129, %struct.slic_cmdqueue** %8, align 8
  %130 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %8, align 8
  %131 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %8, align 8
  %134 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @spin_lock_irqsave(i32* %132, i32 %136)
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %8, align 8
  %140 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %8, align 8
  %144 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %143, i32 0, i32 2
  %145 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %144, align 8
  %146 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %7, align 8
  %147 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %146, i32 0, i32 1
  store %struct.slic_hostcmd* %145, %struct.slic_hostcmd** %147, align 8
  %148 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %6, align 8
  %149 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %8, align 8
  %150 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %149, i32 0, i32 2
  store %struct.slic_hostcmd* %148, %struct.slic_hostcmd** %150, align 8
  %151 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %8, align 8
  %152 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %8, align 8
  %155 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @spin_unlock_irqrestore(i32* %153, i32 %157)
  ret void
}

declare dso_local i32 @virt_to_bus(i8*) #1

declare dso_local i8* @SLIC_GET_ADDR_LOW(i32) #1

declare dso_local i8* @SLIC_GET_ADDR_HIGH(i32) #1

declare dso_local i32 @SLIC_GET_SLIC_HANDLE(%struct.adapter*, %struct.slic_handle*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
