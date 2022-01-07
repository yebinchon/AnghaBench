; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_fallible_read_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_fallible_read_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64 }
%union.ubifs_key = type { i32 }
%struct.ubifs_zbranch = type { i32, i32, i32 }
%struct.ubifs_dent_node = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"LEB %d:%d, key %s\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"dangling branch LEB %d:%d len %d, key %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_zbranch*, i8*)* @fallible_read_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fallible_read_node(%struct.ubifs_info* %0, %union.ubifs_key* %1, %struct.ubifs_zbranch* %2, i8* %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %union.ubifs_key*, align 8
  %7 = alloca %struct.ubifs_zbranch*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.ubifs_key, align 4
  %11 = alloca %struct.ubifs_dent_node*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %6, align 8
  store %struct.ubifs_zbranch* %2, %struct.ubifs_zbranch** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %13 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %16 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %19 = call i32 @DBGKEY(%union.ubifs_key* %18)
  %20 = call i32 @dbg_tnc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %19)
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %24 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %25 = call i32 @key_type(%struct.ubifs_info* %23, %union.ubifs_key* %24)
  %26 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %27 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %30 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %33 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @try_read_node(%struct.ubifs_info* %21, i8* %22, i32 %25, i32 %28, i32 %31, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %51

38:                                               ; preds = %4
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to %struct.ubifs_dent_node*
  store %struct.ubifs_dent_node* %40, %struct.ubifs_dent_node** %11, align 8
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %42 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %43 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %42, i32 0, i32 0
  %44 = call i32 @key_read(%struct.ubifs_info* %41, i32* %43, %union.ubifs_key* %10)
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %46 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %47 = call i64 @keys_cmp(%struct.ubifs_info* %45, %union.ubifs_key* %46, %union.ubifs_key* %10)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %38
  br label %51

51:                                               ; preds = %50, %4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %56 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %61 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %64 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %67 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %70 = call i32 @DBGKEY(%union.ubifs_key* %69)
  %71 = call i32 @dbg_mnt(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %59, %54, %51
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @dbg_tnc(i8*, i32, i32, i32) #1

declare dso_local i32 @DBGKEY(%union.ubifs_key*) #1

declare dso_local i32 @try_read_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @key_type(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @key_read(%struct.ubifs_info*, i32*, %union.ubifs_key*) #1

declare dso_local i64 @keys_cmp(%struct.ubifs_info*, %union.ubifs_key*, %union.ubifs_key*) #1

declare dso_local i32 @dbg_mnt(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
