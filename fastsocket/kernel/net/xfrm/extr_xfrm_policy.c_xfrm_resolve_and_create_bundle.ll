; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_resolve_and_create_bundle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_resolve_and_create_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_dst = type { i32, i32, i32, i32 }
%struct.xfrm_policy = type { i32, i32 }
%struct.flowi = type { i32 }
%struct.dst_entry = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_state = type { i32 }

@XFRM_MAX_DEPTH = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTPOLERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTBUNDLEGENERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTBUNDLECHECKERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_dst* (%struct.xfrm_policy**, i32, %struct.flowi*, i32, %struct.dst_entry*)* @xfrm_resolve_and_create_bundle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_dst* @xfrm_resolve_and_create_bundle(%struct.xfrm_policy** %0, i32 %1, %struct.flowi* %2, i32 %3, %struct.dst_entry* %4) #0 {
  %6 = alloca %struct.xfrm_dst*, align 8
  %7 = alloca %struct.xfrm_policy**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.flowi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.dst_entry*, align 8
  %16 = alloca %struct.xfrm_dst*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.xfrm_policy** %0, %struct.xfrm_policy*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.flowi* %2, %struct.flowi** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.dst_entry* %4, %struct.dst_entry** %11, align 8
  %19 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %7, align 8
  %20 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %19, i64 0
  %21 = load %struct.xfrm_policy*, %struct.xfrm_policy** %20, align 8
  %22 = call %struct.net* @xp_net(%struct.xfrm_policy* %21)
  store %struct.net* %22, %struct.net** %12, align 8
  %23 = load i32, i32* @XFRM_MAX_DEPTH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca %struct.xfrm_state*, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %27 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.flowi*, %struct.flowi** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @xfrm_tmpl_resolve(%struct.xfrm_policy** %27, i32 %28, %struct.flowi* %29, %struct.xfrm_state** %26, i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %5
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.net*, %struct.net** %12, align 8
  %44 = load i32, i32* @LINUX_MIB_XFRMOUTPOLERROR, align 4
  %45 = call i32 @XFRM_INC_STATS(%struct.net* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %37, %34
  %47 = load i32, i32* %17, align 4
  %48 = call %struct.xfrm_dst* @ERR_PTR(i32 %47)
  store %struct.xfrm_dst* %48, %struct.xfrm_dst** %6, align 8
  store i32 1, i32* %18, align 4
  br label %118

49:                                               ; preds = %5
  %50 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %7, align 8
  %51 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %50, i64 0
  %52 = load %struct.xfrm_policy*, %struct.xfrm_policy** %51, align 8
  %53 = load i32, i32* %17, align 4
  %54 = load %struct.flowi*, %struct.flowi** %9, align 8
  %55 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %56 = call %struct.dst_entry* @xfrm_bundle_create(%struct.xfrm_policy* %52, %struct.xfrm_state** %26, i32 %53, %struct.flowi* %54, %struct.dst_entry* %55)
  store %struct.dst_entry* %56, %struct.dst_entry** %15, align 8
  %57 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %58 = call i64 @IS_ERR(%struct.dst_entry* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.net*, %struct.net** %12, align 8
  %62 = load i32, i32* @LINUX_MIB_XFRMOUTBUNDLEGENERROR, align 4
  %63 = call i32 @XFRM_INC_STATS(%struct.net* %61, i32 %62)
  %64 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %65 = call %struct.xfrm_dst* @ERR_CAST(%struct.dst_entry* %64)
  store %struct.xfrm_dst* %65, %struct.xfrm_dst** %6, align 8
  store i32 1, i32* %18, align 4
  br label %118

66:                                               ; preds = %49
  %67 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %68 = bitcast %struct.dst_entry* %67 to %struct.xfrm_dst*
  store %struct.xfrm_dst* %68, %struct.xfrm_dst** %16, align 8
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %71 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %76 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %7, align 8
  %77 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %76, i64 1
  %78 = load %struct.xfrm_policy*, %struct.xfrm_policy** %77, align 8
  %79 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %78, i32 0, i32 1
  %80 = call i32 @xfrm_dst_update_parent(%struct.dst_entry* %75, i32* %79)
  store i32 %80, i32* %17, align 4
  br label %85

81:                                               ; preds = %66
  %82 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %83 = load %struct.flowi*, %struct.flowi** %9, align 8
  %84 = call i32 @xfrm_dst_update_origin(%struct.dst_entry* %82, %struct.flowi* %83)
  store i32 %84, i32* %17, align 4
  br label %85

85:                                               ; preds = %81, %74
  %86 = load i32, i32* %17, align 4
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %91 = call i32 @dst_free(%struct.dst_entry* %90)
  %92 = load %struct.net*, %struct.net** %12, align 8
  %93 = load i32, i32* @LINUX_MIB_XFRMOUTBUNDLECHECKERROR, align 4
  %94 = call i32 @XFRM_INC_STATS(%struct.net* %92, i32 %93)
  %95 = load i32, i32* %17, align 4
  %96 = call %struct.xfrm_dst* @ERR_PTR(i32 %95)
  store %struct.xfrm_dst* %96, %struct.xfrm_dst** %6, align 8
  store i32 1, i32* %18, align 4
  br label %118

97:                                               ; preds = %85
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %100 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %102 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 8, %106
  %108 = trunc i64 %107 to i32
  %109 = call i32 @memcpy(i32 %103, %struct.xfrm_policy** %104, i32 %108)
  %110 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %7, align 8
  %111 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %110, i64 0
  %112 = load %struct.xfrm_policy*, %struct.xfrm_policy** %111, align 8
  %113 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %112, i32 0, i32 0
  %114 = call i32 @atomic_read(i32* %113)
  %115 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %116 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  store %struct.xfrm_dst* %117, %struct.xfrm_dst** %6, align 8
  store i32 1, i32* %18, align 4
  br label %118

118:                                              ; preds = %97, %89, %60, %46
  %119 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load %struct.xfrm_dst*, %struct.xfrm_dst** %6, align 8
  ret %struct.xfrm_dst* %120
}

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @xfrm_tmpl_resolve(%struct.xfrm_policy**, i32, %struct.flowi*, %struct.xfrm_state**, i32) #1

declare dso_local i32 @XFRM_INC_STATS(%struct.net*, i32) #1

declare dso_local %struct.xfrm_dst* @ERR_PTR(i32) #1

declare dso_local %struct.dst_entry* @xfrm_bundle_create(%struct.xfrm_policy*, %struct.xfrm_state**, i32, %struct.flowi*, %struct.dst_entry*) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local %struct.xfrm_dst* @ERR_CAST(%struct.dst_entry*) #1

declare dso_local i32 @xfrm_dst_update_parent(%struct.dst_entry*, i32*) #1

declare dso_local i32 @xfrm_dst_update_origin(%struct.dst_entry*, %struct.flowi*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dst_free(%struct.dst_entry*) #1

declare dso_local i32 @memcpy(i32, %struct.xfrm_policy**, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
