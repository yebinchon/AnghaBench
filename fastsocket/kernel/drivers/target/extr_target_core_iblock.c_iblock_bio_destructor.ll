; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_bio_destructor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_iblock.c_iblock_bio_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.se_cmd* }
%struct.se_cmd = type { i32 }
%struct.iblock_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @iblock_bio_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iblock_bio_destructor(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.iblock_dev*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 0
  %7 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  store %struct.se_cmd* %7, %struct.se_cmd** %3, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.iblock_dev* @IBLOCK_DEV(i32 %10)
  store %struct.iblock_dev* %11, %struct.iblock_dev** %4, align 8
  %12 = load %struct.bio*, %struct.bio** %2, align 8
  %13 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %14 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bio_free(%struct.bio* %12, i32 %15)
  ret void
}

declare dso_local %struct.iblock_dev* @IBLOCK_DEV(i32) #1

declare dso_local i32 @bio_free(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
