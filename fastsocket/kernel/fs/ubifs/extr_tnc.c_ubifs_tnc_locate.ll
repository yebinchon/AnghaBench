; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_locate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_locate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { %struct.ubifs_zbranch* }
%struct.ubifs_zbranch = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_locate(%struct.ubifs_info* %0, %union.ubifs_key* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %union.ubifs_key*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ubifs_znode*, align 8
  %18 = alloca %struct.ubifs_zbranch, align 4
  %19 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %113, %5
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %25 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %26 = call i32 @ubifs_lookup_level0(%struct.ubifs_info* %24, %union.ubifs_key* %25, %struct.ubifs_znode** %17, i32* %13)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %14, align 4
  br label %115

32:                                               ; preds = %20
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %14, align 4
  br label %115

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %40 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %39, i32 0, i32 0
  %41 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %41, i64 %43
  store %struct.ubifs_zbranch* %44, %struct.ubifs_zbranch** %19, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %49 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %53 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %47, %38
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %58 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %59 = call i64 @is_hash_key(%struct.ubifs_info* %57, %union.ubifs_key* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %63 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @tnc_read_node_nm(%struct.ubifs_info* %62, %struct.ubifs_zbranch* %63, i8* %64)
  store i32 %65, i32* %14, align 4
  br label %115

66:                                               ; preds = %56
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %71 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %19, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @ubifs_tnc_read_node(%struct.ubifs_info* %70, %struct.ubifs_zbranch* %71, i8* %72)
  store i32 %73, i32* %14, align 4
  br label %115

74:                                               ; preds = %66
  %75 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %76 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %75, i32 0, i32 0
  %77 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %77, i64 %79
  %81 = bitcast %struct.ubifs_zbranch* %18 to i8*
  %82 = bitcast %struct.ubifs_zbranch* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 8, i1 false)
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %84 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %16, align 4
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %87 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %90 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %18, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @ubifs_get_wbuf(%struct.ubifs_info* %89, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %74
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @ubifs_tnc_read_node(%struct.ubifs_info* %95, %struct.ubifs_zbranch* %18, i8* %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %6, align 4
  br label %120

99:                                               ; preds = %74
  %100 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %101 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @fallible_read_node(%struct.ubifs_info* %100, %union.ubifs_key* %101, %struct.ubifs_zbranch* %18, i8* %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp sle i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %99
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %108 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %18, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %16, align 4
  %111 = call i64 @maybe_leb_gced(%struct.ubifs_info* %107, i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106, %99
  store i32 1, i32* %15, align 4
  br label %20

114:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %120

115:                                              ; preds = %69, %61, %35, %29
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %117 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %115, %114, %94
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_lookup_level0(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i64 @is_hash_key(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @tnc_read_node_nm(%struct.ubifs_info*, %struct.ubifs_zbranch*, i8*) #1

declare dso_local i32 @ubifs_tnc_read_node(%struct.ubifs_info*, %struct.ubifs_zbranch*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @ubifs_get_wbuf(%struct.ubifs_info*, i32) #1

declare dso_local i32 @fallible_read_node(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_zbranch*, i8*) #1

declare dso_local i64 @maybe_leb_gced(%struct.ubifs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
