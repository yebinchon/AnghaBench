; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_dir.c_ext3_htree_create_dir_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_dir.c_ext3_htree_create_dir_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_private_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dir_private_info* (i32)* @ext3_htree_create_dir_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dir_private_info* @ext3_htree_create_dir_info(i32 %0) #0 {
  %2 = alloca %struct.dir_private_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dir_private_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.dir_private_info* @kzalloc(i32 8, i32 %5)
  store %struct.dir_private_info* %6, %struct.dir_private_info** %4, align 8
  %7 = load %struct.dir_private_info*, %struct.dir_private_info** %4, align 8
  %8 = icmp ne %struct.dir_private_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.dir_private_info* null, %struct.dir_private_info** %2, align 8
  br label %20

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @pos2maj_hash(i32 %11)
  %13 = load %struct.dir_private_info*, %struct.dir_private_info** %4, align 8
  %14 = getelementptr inbounds %struct.dir_private_info, %struct.dir_private_info* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @pos2min_hash(i32 %15)
  %17 = load %struct.dir_private_info*, %struct.dir_private_info** %4, align 8
  %18 = getelementptr inbounds %struct.dir_private_info, %struct.dir_private_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.dir_private_info*, %struct.dir_private_info** %4, align 8
  store %struct.dir_private_info* %19, %struct.dir_private_info** %2, align 8
  br label %20

20:                                               ; preds = %10, %9
  %21 = load %struct.dir_private_info*, %struct.dir_private_info** %2, align 8
  ret %struct.dir_private_info* %21
}

declare dso_local %struct.dir_private_info* @kzalloc(i32, i32) #1

declare dso_local i32 @pos2maj_hash(i32) #1

declare dso_local i32 @pos2min_hash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
