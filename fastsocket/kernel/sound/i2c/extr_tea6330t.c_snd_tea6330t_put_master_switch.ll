; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/extr_tea6330t.c_snd_tea6330t_put_master_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/extr_tea6330t.c_snd_tea6330t_put_master_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.tea6330t = type { i8*, i8, i8, i32, i32 }

@TEA6330T_SADDR_VOLUME_LEFT = common dso_local global i64 0, align 8
@TEA6330T_SADDR_VOLUME_RIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_tea6330t_put_master_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_tea6330t_put_master_switch(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.tea6330t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = call %struct.tea6330t* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.tea6330t* %14, %struct.tea6330t** %5, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 1
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %11, align 1
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 1
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %12, align 1
  %33 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %34 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snd_i2c_lock(i32 %35)
  %37 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %38 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* @TEA6330T_SADDR_VOLUME_LEFT, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 1
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %9, align 1
  %48 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %49 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* @TEA6330T_SADDR_VOLUME_RIGHT, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 1
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %10, align 1
  %59 = load i8, i8* %11, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %9, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %2
  %65 = load i8, i8* %12, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* %10, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %66, %68
  br label %70

70:                                               ; preds = %64, %2
  %71 = phi i1 [ true, %2 ], [ %69, %64 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %6, align 4
  %73 = load i8, i8* %11, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %78 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %77, i32 0, i32 1
  %79 = load i8, i8* %78, align 8
  %80 = zext i8 %79 to i32
  br label %82

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %76
  %83 = phi i32 [ %80, %76 ], [ 0, %81 ]
  %84 = trunc i32 %83 to i8
  %85 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %86 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* @TEA6330T_SADDR_VOLUME_LEFT, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8 %84, i8* %89, align 1
  %90 = load i8, i8* %12, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %82
  %94 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %95 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %94, i32 0, i32 2
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  br label %99

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98, %93
  %100 = phi i32 [ %97, %93 ], [ 0, %98 ]
  %101 = trunc i32 %100 to i8
  %102 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %103 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* @TEA6330T_SADDR_VOLUME_RIGHT, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 %101, i8* %106, align 1
  %107 = load i64, i64* @TEA6330T_SADDR_VOLUME_LEFT, align 8
  %108 = trunc i64 %107 to i8
  %109 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  store i8 %108, i8* %109, align 1
  %110 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %111 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* @TEA6330T_SADDR_VOLUME_LEFT, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 1
  store i8 %115, i8* %116, align 1
  %117 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %118 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i64, i64* @TEA6330T_SADDR_VOLUME_RIGHT, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  store i8 %122, i8* %123, align 1
  %124 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %125 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %128 = call i32 @snd_i2c_sendbytes(i32 %126, i8* %127, i32 3)
  store i32 %128, i32* %7, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %99
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %99
  %133 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %134 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @snd_i2c_unlock(i32 %135)
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local %struct.tea6330t* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_i2c_lock(i32) #1

declare dso_local i32 @snd_i2c_sendbytes(i32, i8*, i32) #1

declare dso_local i32 @snd_i2c_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
