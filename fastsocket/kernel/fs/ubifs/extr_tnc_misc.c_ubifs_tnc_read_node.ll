; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_misc.c_ubifs_tnc_read_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_misc.c_ubifs_tnc_read_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_zbranch = type { i32, i32, i32, %union.ubifs_key }
%union.ubifs_key = type { i32 }
%struct.ubifs_wbuf = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"key %s\00", align 1
@UBIFS_KEY_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"bad key in node at LEB %d:%d\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"looked for key %s found node's key %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_read_node(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_zbranch*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %union.ubifs_key, align 4
  %9 = alloca %union.ubifs_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_wbuf*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %14 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %13, i32 0, i32 3
  store %union.ubifs_key* %14, %union.ubifs_key** %9, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %16 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %17 = call i32 @key_type(%struct.ubifs_info* %15, %union.ubifs_key* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %19 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %20 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ubifs_wbuf* @ubifs_get_wbuf(%struct.ubifs_info* %18, i32 %21)
  store %struct.ubifs_wbuf* %22, %struct.ubifs_wbuf** %12, align 8
  %23 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %12, align 8
  %24 = icmp ne %struct.ubifs_wbuf* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %3
  %26 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %12, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %30 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %33 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %36 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ubifs_read_node_wbuf(%struct.ubifs_wbuf* %26, i8* %27, i32 %28, i32 %31, i32 %34, i32 %37)
  store i32 %38, i32* %10, align 4
  br label %53

39:                                               ; preds = %3
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %44 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %47 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %50 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ubifs_read_node(%struct.ubifs_info* %40, i8* %41, i32 %42, i32 %45, i32 %48, i32 %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %39, %25
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %58 = call i32 @DBGKEY(%union.ubifs_key* %57)
  %59 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %90

61:                                               ; preds = %53
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @UBIFS_KEY_OFFSET, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %63, i64 %65
  %67 = call i32 @key_read(%struct.ubifs_info* %62, i8* %66, %union.ubifs_key* %8)
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %69 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %70 = call i32 @keys_eq(%struct.ubifs_info* %68, %union.ubifs_key* %69, %union.ubifs_key* %8)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %61
  %73 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %74 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %77 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ubifs_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %81 = call i32 @DBGKEY(%union.ubifs_key* %80)
  %82 = call i32 @DBGKEY1(%union.ubifs_key* %8)
  %83 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @dbg_dump_node(%struct.ubifs_info* %84, i8* %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %90

89:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %72, %56
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @key_type(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local %struct.ubifs_wbuf* @ubifs_get_wbuf(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_read_node_wbuf(%struct.ubifs_wbuf*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_read_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_tnc(i8*, i32, ...) #1

declare dso_local i32 @DBGKEY(%union.ubifs_key*) #1

declare dso_local i32 @key_read(%struct.ubifs_info*, i8*, %union.ubifs_key*) #1

declare dso_local i32 @keys_eq(%struct.ubifs_info*, %union.ubifs_key*, %union.ubifs_key*) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32) #1

declare dso_local i32 @DBGKEY1(%union.ubifs_key*) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
