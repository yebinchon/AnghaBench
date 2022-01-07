; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc889_fixup_dac_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc889_fixup_dac_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_fixup = type { i32 }

@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@__const.alc889_fixup_dac_route.conn1 = private unnamed_addr constant [2 x i32] [i32 12, i32 13], align 4
@__const.alc889_fixup_dac_route.conn2 = private unnamed_addr constant [2 x i32] [i32 14, i32 15], align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@__const.alc889_fixup_dac_route.conn = private unnamed_addr constant [5 x i32] [i32 12, i32 13, i32 14, i32 15, i32 38], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @alc889_fixup_dac_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc889_fixup_dac_route(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [5 x i32], align 16
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ([2 x i32]* @__const.alc889_fixup_dac_route.conn1 to i8*), i64 8, i1 false)
  %15 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([2 x i32]* @__const.alc889_fixup_dac_route.conn2 to i8*), i64 8, i1 false)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %18 = call i32 @snd_hda_override_conn_list(%struct.hda_codec* %16, i32 20, i32 2, i32* %17)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %21 = call i32 @snd_hda_override_conn_list(%struct.hda_codec* %19, i32 21, i32 2, i32* %20)
  %22 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %24 = call i32 @snd_hda_override_conn_list(%struct.hda_codec* %22, i32 24, i32 2, i32* %23)
  %25 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %27 = call i32 @snd_hda_override_conn_list(%struct.hda_codec* %25, i32 26, i32 2, i32* %26)
  br label %47

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = bitcast [5 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 bitcast ([5 x i32]* @__const.alc889_fixup_dac_route.conn to i8*), i64 20, i1 false)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %36 = call i32 @snd_hda_override_conn_list(%struct.hda_codec* %34, i32 20, i32 5, i32* %35)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %39 = call i32 @snd_hda_override_conn_list(%struct.hda_codec* %37, i32 21, i32 5, i32* %38)
  %40 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %41 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %42 = call i32 @snd_hda_override_conn_list(%struct.hda_codec* %40, i32 24, i32 5, i32* %41)
  %43 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %45 = call i32 @snd_hda_override_conn_list(%struct.hda_codec* %43, i32 26, i32 5, i32* %44)
  br label %46

46:                                               ; preds = %32, %28
  br label %47

47:                                               ; preds = %46, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snd_hda_override_conn_list(%struct.hda_codec*, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
