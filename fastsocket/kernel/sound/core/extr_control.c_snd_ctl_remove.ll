; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_kcontrol = type { i32, %struct.snd_ctl_elem_id, i32 }
%struct.snd_ctl_elem_id = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ctl_remove(%struct.snd_card* %0, %struct.snd_kcontrol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca %struct.snd_ctl_elem_id, align 4
  %7 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  %8 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %9 = icmp ne %struct.snd_card* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %12 = icmp ne %struct.snd_kcontrol* %11, null
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ true, %2 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @snd_BUG_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %59

22:                                               ; preds = %14
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 2
  %25 = call i32 @list_del(i32* %24)
  %26 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %27 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %30 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %33, i32 0, i32 1
  %35 = bitcast %struct.snd_ctl_elem_id* %6 to i8*
  %36 = bitcast %struct.snd_ctl_elem_id* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 8, i1 false)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %47, %22
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %40 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %45 = load i32, i32* @SNDRV_CTL_EVENT_MASK_REMOVE, align 4
  %46 = call i32 @snd_ctl_notify(%struct.snd_card* %44, i32 %45, %struct.snd_ctl_elem_id* %6)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %37

56:                                               ; preds = %37
  %57 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %58 = call i32 @snd_ctl_free_one(%struct.snd_kcontrol* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %19
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @list_del(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_ctl_notify(%struct.snd_card*, i32, %struct.snd_ctl_elem_id*) #1

declare dso_local i32 @snd_ctl_free_one(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
