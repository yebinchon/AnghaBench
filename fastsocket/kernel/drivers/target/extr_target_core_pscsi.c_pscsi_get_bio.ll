; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_get_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_get_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"PSCSI: bio_kmalloc() failed\0A\00", align 1
@pscsi_bi_endio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (i32)* @pscsi_get_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @pscsi_get_bio(i32 %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.bio* @bio_kmalloc(i32 %5, i32 %6)
  store %struct.bio* %7, %struct.bio** %4, align 8
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = icmp ne %struct.bio* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.bio* null, %struct.bio** %2, align 8
  br label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @pscsi_bi_endio, align 4
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  store %struct.bio* %16, %struct.bio** %2, align 8
  br label %17

17:                                               ; preds = %12, %10
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  ret %struct.bio* %18
}

declare dso_local %struct.bio* @bio_kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
