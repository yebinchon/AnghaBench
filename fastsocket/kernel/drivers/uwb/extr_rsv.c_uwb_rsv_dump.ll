; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i32, %struct.TYPE_8__, %struct.TYPE_6__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i64, %struct.uwb_dev_addr, %struct.TYPE_7__* }
%struct.uwb_dev_addr = type { i32 }
%struct.TYPE_7__ = type { %struct.uwb_dev_addr }
%struct.TYPE_6__ = type { %struct.uwb_dev_addr }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.device }
%struct.device = type { i32 }

@UWB_ADDR_STRSIZE = common dso_local global i32 0, align 4
@UWB_RSV_TARGET_DEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"rsv %s %s -> %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_rsv_dump(i8* %0, %struct.uwb_rsv* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.uwb_rsv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.uwb_dev_addr, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.uwb_rsv* %1, %struct.uwb_rsv** %4, align 8
  %10 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %11 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %10, i32 0, i32 3
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load i32, i32* @UWB_ADDR_STRSIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @UWB_ADDR_STRSIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %22 = trunc i64 %16 to i32
  %23 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %24 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @uwb_dev_addr_print(i8* %18, i32 %22, %struct.uwb_dev_addr* %26)
  %28 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %29 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UWB_RSV_TARGET_DEV, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %36 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = bitcast %struct.uwb_dev_addr* %6 to i8*
  %41 = bitcast %struct.uwb_dev_addr* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  br label %48

42:                                               ; preds = %2
  %43 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %44 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = bitcast %struct.uwb_dev_addr* %6 to i8*
  %47 = bitcast %struct.uwb_dev_addr* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 8 %47, i64 4, i1 false)
  br label %48

48:                                               ; preds = %42, %34
  %49 = trunc i64 %20 to i32
  %50 = call i32 @uwb_dev_addr_print(i8* %21, i32 %49, %struct.uwb_dev_addr* %6)
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  %54 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @uwb_rsv_state_str(i32 %55)
  %57 = call i32 @dev_dbg(%struct.device* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %52, i8* %18, i8* %21, i32 %56)
  %58 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %58)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uwb_dev_addr_print(i8*, i32, %struct.uwb_dev_addr*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i8*, i8*, i32) #2

declare dso_local i32 @uwb_rsv_state_str(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
