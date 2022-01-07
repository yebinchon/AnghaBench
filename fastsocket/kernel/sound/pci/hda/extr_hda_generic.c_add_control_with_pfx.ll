; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_add_control_with_pfx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_add_control_with_pfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_gen_spec = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_gen_spec*, i32, i8*, i8*, i8*, i32, i64)* @add_control_with_pfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_control_with_pfx(%struct.hda_gen_spec* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hda_gen_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca [44 x i8], align 16
  store %struct.hda_gen_spec* %0, %struct.hda_gen_spec** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %17 = getelementptr inbounds [44 x i8], [44 x i8]* %16, i64 0, i64 0
  %18 = load i8*, i8** %11, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = call i32 @snprintf(i8* %17, i32 44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19, i8* %20)
  %22 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds [44 x i8], [44 x i8]* %16, i64 0, i64 0
  %25 = load i32, i32* %14, align 4
  %26 = load i64, i64* %15, align 8
  %27 = call i32 @add_control(%struct.hda_gen_spec* %22, i32 %23, i8* %24, i32 %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %33

32:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @add_control(%struct.hda_gen_spec*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
