; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/extr_tea6330t.c_snd_tea6330t_put_treble.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/extr_tea6330t.c_snd_tea6330t_put_treble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.tea6330t = type { i32, i8, i8*, i32, i32 }

@TEA6330T_SADDR_TREBLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_tea6330t_put_treble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_tea6330t_put_treble(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.tea6330t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8], align 1
  %9 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.tea6330t* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.tea6330t* %11, %struct.tea6330t** %5, align 8
  %12 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %20 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = srem i32 %18, %22
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %9, align 1
  %25 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %26 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snd_i2c_lock(i32 %27)
  %29 = load i8, i8* %9, align 1
  %30 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %31 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %30, i32 0, i32 1
  store i8 %29, i8* %31, align 4
  %32 = load i8, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %33, 3
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %9, align 1
  %36 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %37 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* @TEA6330T_SADDR_TREBLE, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %9, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %42, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load i64, i64* @TEA6330T_SADDR_TREBLE, align 8
  %48 = trunc i64 %47 to i8
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %48, i8* %49, align 1
  %50 = load i8, i8* %9, align 1
  %51 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %52 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* @TEA6330T_SADDR_TREBLE, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 %50, i8* %55, align 1
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %50, i8* %56, align 1
  %57 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %58 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %61 = call i32 @snd_i2c_sendbytes(i32 %59, i8* %60, i32 2)
  store i32 %61, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %2
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %2
  %66 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %67 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @snd_i2c_unlock(i32 %68)
  %70 = load i32, i32* %6, align 4
  ret i32 %70
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
