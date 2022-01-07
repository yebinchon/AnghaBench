; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_vmaster.c__snd_ctl_add_slave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_vmaster.c__snd_ctl_add_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32, i32, %struct.link_slave*, %struct.TYPE_4__, %struct.TYPE_5__*, i32, i32, i32 }
%struct.link_slave = type { i32, i32, %struct.link_master*, %struct.snd_kcontrol, %struct.snd_kcontrol* }
%struct.link_master = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@slave_info = common dso_local global i32 0, align 4
@slave_get = common dso_local global i32 0, align 4
@slave_put = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK = common dso_local global i32 0, align 4
@slave_tlv_cmd = common dso_local global i32 0, align 4
@slave_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_snd_ctl_add_slave(%struct.snd_kcontrol* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.link_master*, align 8
  %9 = alloca %struct.link_slave*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %11 = call %struct.link_master* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.link_master* %11, %struct.link_master** %8, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = add i64 72, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.link_slave* @kzalloc(i32 %18, i32 %19)
  store %struct.link_slave* %20, %struct.link_slave** %9, align 8
  %21 = load %struct.link_slave*, %struct.link_slave** %9, align 8
  %22 = icmp ne %struct.link_slave* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %90

26:                                               ; preds = %3
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %28 = load %struct.link_slave*, %struct.link_slave** %9, align 8
  %29 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %28, i32 0, i32 4
  store %struct.snd_kcontrol* %27, %struct.snd_kcontrol** %29, align 8
  %30 = load %struct.link_slave*, %struct.link_slave** %9, align 8
  %31 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %30, i32 0, i32 3
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %33 = bitcast %struct.snd_kcontrol* %31 to i8*
  %34 = bitcast %struct.snd_kcontrol* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 48, i1 false)
  %35 = load %struct.link_slave*, %struct.link_slave** %9, align 8
  %36 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %36, i32 0, i32 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %40 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %39, i32 0, i32 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %43 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memcpy(%struct.TYPE_5__* %38, %struct.TYPE_5__* %41, i32 %47)
  %49 = load %struct.link_master*, %struct.link_master** %8, align 8
  %50 = load %struct.link_slave*, %struct.link_slave** %9, align 8
  %51 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %50, i32 0, i32 2
  store %struct.link_master* %49, %struct.link_master** %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.link_slave*, %struct.link_slave** %9, align 8
  %54 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @slave_info, align 4
  %56 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %57 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @slave_get, align 4
  %59 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %60 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @slave_put, align 4
  %62 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %63 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %65 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %64, i32 0, i32 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %26
  %74 = load i32, i32* @slave_tlv_cmd, align 4
  %75 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %76 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  br label %78

78:                                               ; preds = %73, %26
  %79 = load %struct.link_slave*, %struct.link_slave** %9, align 8
  %80 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %81 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %80, i32 0, i32 2
  store %struct.link_slave* %79, %struct.link_slave** %81, align 8
  %82 = load i32, i32* @slave_free, align 4
  %83 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %84 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.link_slave*, %struct.link_slave** %9, align 8
  %86 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %85, i32 0, i32 1
  %87 = load %struct.link_master*, %struct.link_master** %8, align 8
  %88 = getelementptr inbounds %struct.link_master, %struct.link_master* %87, i32 0, i32 0
  %89 = call i32 @list_add_tail(i32* %86, i32* %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %78, %23
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.link_master* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.link_slave* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
