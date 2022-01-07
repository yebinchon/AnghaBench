; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c___snd_hda_add_vmaster.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c___snd_hda_add_vmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.snd_kcontrol = type { i32 }

@check_slave_present = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No slave found for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@snd_ctl_add_slave = common dso_local global i64 0, align 8
@init_slave_0dB = common dso_local global i32 0, align 4
@init_slave_unmute = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__snd_hda_add_vmaster(%struct.hda_codec* %0, i8* %1, i32* %2, i8** %3, i8* %4, i32 %5, %struct.snd_kcontrol** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hda_codec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.snd_kcontrol**, align 8
  %16 = alloca %struct.snd_kcontrol*, align 8
  %17 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.snd_kcontrol** %6, %struct.snd_kcontrol*** %15, align 8
  %18 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %15, align 8
  %19 = icmp ne %struct.snd_kcontrol** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %15, align 8
  store %struct.snd_kcontrol* null, %struct.snd_kcontrol** %21, align 8
  br label %22

22:                                               ; preds = %20, %7
  %23 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %24 = load i8**, i8*** %12, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load i32, i32* @check_slave_present, align 4
  %27 = call i32 @map_slaves(%struct.hda_codec* %23, i8** %24, i8* %25, i32 %26, %struct.snd_kcontrol* null)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @snd_printdd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 0, i32* %8, align 4
  br label %88

33:                                               ; preds = %22
  %34 = load i8*, i8** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call %struct.snd_kcontrol* @snd_ctl_make_virtual_master(i8* %34, i32* %35)
  store %struct.snd_kcontrol* %36, %struct.snd_kcontrol** %16, align 8
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %38 = icmp ne %struct.snd_kcontrol* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %88

42:                                               ; preds = %33
  %43 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %45 = call i32 @snd_hda_ctl_add(%struct.hda_codec* %43, i32 0, %struct.snd_kcontrol* %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %17, align 4
  store i32 %49, i32* %8, align 4
  br label %88

50:                                               ; preds = %42
  %51 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %52 = load i8**, i8*** %12, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i64, i64* @snd_ctl_add_slave, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %57 = call i32 @map_slaves(%struct.hda_codec* %51, i8** %52, i8* %53, i32 %55, %struct.snd_kcontrol* %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %17, align 4
  store i32 %61, i32* %8, align 4
  br label %88

62:                                               ; preds = %50
  %63 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %64 = call i32 @put_kctl_with_value(%struct.snd_kcontrol* %63, i32 0)
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %69 = load i8**, i8*** %12, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @init_slave_0dB, align 4
  br label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @init_slave_unmute, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %80 = call i32 @map_slaves(%struct.hda_codec* %68, i8** %69, i8* %70, i32 %78, %struct.snd_kcontrol* %79)
  br label %81

81:                                               ; preds = %77, %62
  %82 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %15, align 8
  %83 = icmp ne %struct.snd_kcontrol** %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %86 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %15, align 8
  store %struct.snd_kcontrol* %85, %struct.snd_kcontrol** %86, align 8
  br label %87

87:                                               ; preds = %84, %81
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %87, %60, %48, %39, %30
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @map_slaves(%struct.hda_codec*, i8**, i8*, i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @snd_printdd(i8*, i8*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_make_virtual_master(i8*, i32*) #1

declare dso_local i32 @snd_hda_ctl_add(%struct.hda_codec*, i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @put_kctl_with_value(%struct.snd_kcontrol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
