; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_lnc_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_lnc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_zbranch = type { i8*, i32, i32 }
%struct.ubifs_dent_node = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_zbranch*, i8*)* @lnc_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lnc_add(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_zbranch*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ubifs_dent_node*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.ubifs_dent_node*
  store %struct.ubifs_dent_node* %12, %struct.ubifs_dent_node** %10, align 8
  %13 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %14 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @ubifs_assert(i32 %18)
  %20 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %21 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ubifs_assert(i32 %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %27 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %28 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %27, i32 0, i32 2
  %29 = call i32 @is_hash_key(%struct.ubifs_info* %26, i32* %28)
  %30 = call i32 @ubifs_assert(i32 %29)
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %32 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %10, align 8
  %33 = call i32 @ubifs_validate_entry(%struct.ubifs_info* %31, %struct.ubifs_dent_node* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = call i32 (...) @dbg_dump_stack()
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %39 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %10, align 8
  %40 = call i32 @dbg_dump_node(%struct.ubifs_info* %38, %struct.ubifs_dent_node* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %61

42:                                               ; preds = %3
  %43 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %44 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @GFP_NOFS, align 4
  %47 = call i8* @kmalloc(i32 %45, i32 %46)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %61

51:                                               ; preds = %42
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %55 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memcpy(i8* %52, i8* %53, i32 %56)
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %60 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %51, %50, %36
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_validate_entry(%struct.ubifs_info*, %struct.ubifs_dent_node*) #1

declare dso_local i32 @dbg_dump_stack(...) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, %struct.ubifs_dent_node*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
