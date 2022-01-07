; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_add_kctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_add_kctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_gen_spec = type { i32 }
%struct.snd_kcontrol_new = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec* %0, i8* %1, %struct.snd_kcontrol_new* %2) #0 {
  %4 = alloca %struct.snd_kcontrol_new*, align 8
  %5 = alloca %struct.hda_gen_spec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.snd_kcontrol_new*, align 8
  %8 = alloca %struct.snd_kcontrol_new*, align 8
  store %struct.hda_gen_spec* %0, %struct.hda_gen_spec** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.snd_kcontrol_new* %2, %struct.snd_kcontrol_new** %7, align 8
  %9 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %10 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %9, i32 0, i32 0
  %11 = call %struct.snd_kcontrol_new* @snd_array_new(i32* %10)
  store %struct.snd_kcontrol_new* %11, %struct.snd_kcontrol_new** %8, align 8
  %12 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %13 = icmp ne %struct.snd_kcontrol_new* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.snd_kcontrol_new* null, %struct.snd_kcontrol_new** %4, align 8
  br label %50

15:                                               ; preds = %3
  %16 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %17 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %18 = bitcast %struct.snd_kcontrol_new* %16 to i8*
  %19 = bitcast %struct.snd_kcontrol_new* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kstrdup(i8* %23, i32 %24)
  %26 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %27 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %42

28:                                               ; preds = %15
  %29 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %35 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kstrdup(i8* %36, i32 %37)
  %39 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %40 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %33, %28
  br label %42

42:                                               ; preds = %41, %22
  %43 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %44 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store %struct.snd_kcontrol_new* null, %struct.snd_kcontrol_new** %4, align 8
  br label %50

48:                                               ; preds = %42
  %49 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  store %struct.snd_kcontrol_new* %49, %struct.snd_kcontrol_new** %4, align 8
  br label %50

50:                                               ; preds = %48, %47, %14
  %51 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  ret %struct.snd_kcontrol_new* %51
}

declare dso_local %struct.snd_kcontrol_new* @snd_array_new(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
