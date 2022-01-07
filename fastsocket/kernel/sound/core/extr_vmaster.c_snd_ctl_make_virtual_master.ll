; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_vmaster.c_snd_ctl_make_virtual_master.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_vmaster.c_snd_ctl_make_virtual_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, i32, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.link_master = type { i32, i32 }
%struct.snd_kcontrol_new = type { i8*, i8*, i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@master_info = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@master_get = common dso_local global i32 0, align 4
@master_put = common dso_local global i32 0, align 4
@master_free = common dso_local global i32 0, align 4
@SNDRV_CTL_TLVT_DB_SCALE = common dso_local global i32 0, align 4
@SNDRV_CTL_TLVT_DB_MINMAX = common dso_local global i32 0, align 4
@SNDRV_CTL_TLVT_DB_MINMAX_MUTE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_kcontrol* @snd_ctl_make_virtual_master(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.link_master*, align 8
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca %struct.snd_kcontrol_new, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = call i32 @memset(%struct.snd_kcontrol_new* %8, i32 0, i32 24)
  %10 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %11 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 2
  store i32 %10, i32* %11, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load i8*, i8** @master_info, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.link_master* @kzalloc(i32 8, i32 %16)
  store %struct.link_master* %17, %struct.link_master** %6, align 8
  %18 = load %struct.link_master*, %struct.link_master** %6, align 8
  %19 = icmp ne %struct.link_master* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store %struct.snd_kcontrol* null, %struct.snd_kcontrol** %3, align 8
  br label %87

21:                                               ; preds = %2
  %22 = load %struct.link_master*, %struct.link_master** %6, align 8
  %23 = getelementptr inbounds %struct.link_master, %struct.link_master* %22, i32 0, i32 1
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.link_master*, %struct.link_master** %6, align 8
  %26 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %8, %struct.link_master* %25)
  store %struct.snd_kcontrol* %26, %struct.snd_kcontrol** %7, align 8
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %28 = icmp ne %struct.snd_kcontrol* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load %struct.link_master*, %struct.link_master** %6, align 8
  %31 = call i32 @kfree(%struct.link_master* %30)
  store %struct.snd_kcontrol* null, %struct.snd_kcontrol** %3, align 8
  br label %87

32:                                               ; preds = %21
  %33 = load i8*, i8** @master_info, align 8
  %34 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %35 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @master_get, align 4
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %38 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @master_put, align 4
  %40 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %41 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @master_free, align 4
  %43 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %44 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %85

47:                                               ; preds = %32
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SNDRV_CTL_TLVT_DB_SCALE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SNDRV_CTL_TLVT_DB_MINMAX, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SNDRV_CTL_TLVT_DB_MINMAX_MUTE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %59, %53, %47
  %66 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READ, align 4
  %67 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %68 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %66
  store i32 %73, i32* %71, align 4
  %74 = load %struct.link_master*, %struct.link_master** %6, align 8
  %75 = getelementptr inbounds %struct.link_master, %struct.link_master* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @memcpy(i32 %76, i32* %77, i32 4)
  %79 = load %struct.link_master*, %struct.link_master** %6, align 8
  %80 = getelementptr inbounds %struct.link_master, %struct.link_master* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %83 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  br label %85

85:                                               ; preds = %65, %59, %32
  %86 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  store %struct.snd_kcontrol* %86, %struct.snd_kcontrol** %3, align 8
  br label %87

87:                                               ; preds = %85, %29, %20
  %88 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  ret %struct.snd_kcontrol* %88
}

declare dso_local i32 @memset(%struct.snd_kcontrol_new*, i32, i32) #1

declare dso_local %struct.link_master* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.link_master*) #1

declare dso_local i32 @kfree(%struct.link_master*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
