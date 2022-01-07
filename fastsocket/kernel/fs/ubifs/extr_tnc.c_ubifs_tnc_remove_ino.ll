; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_remove_ino.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_remove_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_dent_node = type { i32, i32, i32*, i32 }
%struct.qstr = type { i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"ino %lu\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"xent '%s', ino %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_remove_ino(%struct.ubifs_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.ubifs_key, align 4
  %7 = alloca %union.ubifs_key, align 4
  %8 = alloca %struct.ubifs_dent_node*, align 8
  %9 = alloca %struct.ubifs_dent_node*, align 8
  %10 = alloca %struct.qstr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ubifs_dent_node* null, %struct.ubifs_dent_node** %9, align 8
  %13 = bitcast %struct.qstr* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i64, i64* %5, align 8
  %15 = call i32 (i8*, i64, ...) @dbg_tnc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @lowest_xent_key(%struct.ubifs_info* %16, %union.ubifs_key* %6, i64 %17)
  br label %19

19:                                               ; preds = %2, %78
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %21 = call %struct.ubifs_dent_node* @ubifs_tnc_next_ent(%struct.ubifs_info* %20, %union.ubifs_key* %6, %struct.qstr* %10)
  store %struct.ubifs_dent_node* %21, %struct.ubifs_dent_node** %8, align 8
  %22 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %8, align 8
  %23 = call i64 @IS_ERR(%struct.ubifs_dent_node* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %8, align 8
  %27 = call i32 @PTR_ERR(%struct.ubifs_dent_node* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %86

33:                                               ; preds = %25
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %3, align 4
  br label %97

35:                                               ; preds = %19
  %36 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %8, align 8
  %37 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @le64_to_cpu(i32 %38)
  store i64 %39, i64* %11, align 8
  %40 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %8, align 8
  %41 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = ptrtoint i32* %42 to i64
  %44 = load i64, i64* %11, align 8
  %45 = call i32 (i8*, i64, ...) @dbg_tnc(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %8, align 8
  %47 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 1
  store i32* %48, i32** %49, align 8
  %50 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %8, align 8
  %51 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %56 = call i32 @ubifs_tnc_remove_nm(%struct.ubifs_info* %55, %union.ubifs_key* %6, %struct.qstr* %10)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %35
  %60 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %8, align 8
  %61 = call i32 @kfree(%struct.ubifs_dent_node* %60)
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %3, align 4
  br label %97

63:                                               ; preds = %35
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @lowest_ino_key(%struct.ubifs_info* %64, %union.ubifs_key* %6, i64 %65)
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @highest_ino_key(%struct.ubifs_info* %67, %union.ubifs_key* %7, i64 %68)
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %71 = call i32 @ubifs_tnc_remove_range(%struct.ubifs_info* %70, %union.ubifs_key* %6, %union.ubifs_key* %7)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %8, align 8
  %76 = call i32 @kfree(%struct.ubifs_dent_node* %75)
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %3, align 4
  br label %97

78:                                               ; preds = %63
  %79 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %9, align 8
  %80 = call i32 @kfree(%struct.ubifs_dent_node* %79)
  %81 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %8, align 8
  store %struct.ubifs_dent_node* %81, %struct.ubifs_dent_node** %9, align 8
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %83 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %8, align 8
  %84 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %83, i32 0, i32 0
  %85 = call i32 @key_read(%struct.ubifs_info* %82, i32* %84, %union.ubifs_key* %6)
  br label %19

86:                                               ; preds = %32
  %87 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %9, align 8
  %88 = call i32 @kfree(%struct.ubifs_dent_node* %87)
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @lowest_ino_key(%struct.ubifs_info* %89, %union.ubifs_key* %6, i64 %90)
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @highest_ino_key(%struct.ubifs_info* %92, %union.ubifs_key* %7, i64 %93)
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %96 = call i32 @ubifs_tnc_remove_range(%struct.ubifs_info* %95, %union.ubifs_key* %6, %union.ubifs_key* %7)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %86, %74, %59, %33
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dbg_tnc(i8*, i64, ...) #2

declare dso_local i32 @lowest_xent_key(%struct.ubifs_info*, %union.ubifs_key*, i64) #2

declare dso_local %struct.ubifs_dent_node* @ubifs_tnc_next_ent(%struct.ubifs_info*, %union.ubifs_key*, %struct.qstr*) #2

declare dso_local i64 @IS_ERR(%struct.ubifs_dent_node*) #2

declare dso_local i32 @PTR_ERR(%struct.ubifs_dent_node*) #2

declare dso_local i64 @le64_to_cpu(i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @ubifs_tnc_remove_nm(%struct.ubifs_info*, %union.ubifs_key*, %struct.qstr*) #2

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #2

declare dso_local i32 @lowest_ino_key(%struct.ubifs_info*, %union.ubifs_key*, i64) #2

declare dso_local i32 @highest_ino_key(%struct.ubifs_info*, %union.ubifs_key*, i64) #2

declare dso_local i32 @ubifs_tnc_remove_range(%struct.ubifs_info*, %union.ubifs_key*, %union.ubifs_key*) #2

declare dso_local i32 @key_read(%struct.ubifs_info*, i32*, %union.ubifs_key*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
