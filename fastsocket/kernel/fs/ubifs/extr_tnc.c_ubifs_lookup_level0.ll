; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_lookup_level0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_lookup_level0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.ubifs_zbranch }
%struct.ubifs_zbranch = type { i32, %struct.ubifs_znode* }
%struct.ubifs_znode = type { i64, i32, %struct.ubifs_zbranch* }
%union.ubifs_key = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"search key %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"found %d, lvl %d, n %d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"found 0, lvl %d, n -1\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"found 1, lvl %d, n %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_lookup_level0(%struct.ubifs_info* %0, %union.ubifs_key* %1, %struct.ubifs_znode** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %union.ubifs_key*, align 8
  %8 = alloca %struct.ubifs_znode**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_znode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %7, align 8
  store %struct.ubifs_znode** %2, %struct.ubifs_znode*** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = call i64 (...) @get_seconds()
  store i64 %15, i64* %13, align 8
  %16 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %17 = call i32 @DBGKEY(%union.ubifs_key* %16)
  %18 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %20, i32 0, i32 1
  %22 = load %struct.ubifs_znode*, %struct.ubifs_znode** %21, align 8
  store %struct.ubifs_znode* %22, %struct.ubifs_znode** %12, align 8
  %23 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %24 = icmp ne %struct.ubifs_znode* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %4
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 0
  %33 = call %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info* %30, %struct.ubifs_zbranch* %32, %struct.ubifs_znode* null, i32 0)
  store %struct.ubifs_znode* %33, %struct.ubifs_znode** %12, align 8
  %34 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %35 = call i64 @IS_ERR(%struct.ubifs_znode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %39 = call i32 @PTR_ERR(%struct.ubifs_znode* %38)
  store i32 %39, i32* %5, align 4
  br label %168

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %4
  %42 = load i64, i64* %13, align 8
  %43 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %44 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %74, %94
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %47 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %48 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @ubifs_search_zbranch(%struct.ubifs_info* %46, %struct.ubifs_znode* %47, %union.ubifs_key* %48, i32* %49)
  store i32 %50, i32* %11, align 4
  %51 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %52 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %95

56:                                               ; preds = %45
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32*, i32** %9, align 8
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %64 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %63, i32 0, i32 2
  %65 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %64, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %65, i64 %68
  store %struct.ubifs_zbranch* %69, %struct.ubifs_zbranch** %14, align 8
  %70 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %14, align 8
  %71 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %70, i32 0, i32 1
  %72 = load %struct.ubifs_znode*, %struct.ubifs_znode** %71, align 8
  %73 = icmp ne %struct.ubifs_znode* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %62
  %75 = load i64, i64* %13, align 8
  %76 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %77 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %14, align 8
  %79 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %78, i32 0, i32 1
  %80 = load %struct.ubifs_znode*, %struct.ubifs_znode** %79, align 8
  store %struct.ubifs_znode* %80, %struct.ubifs_znode** %12, align 8
  br label %45

81:                                               ; preds = %62
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %83 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %14, align 8
  %84 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info* %82, %struct.ubifs_zbranch* %83, %struct.ubifs_znode* %84, i32 %86)
  store %struct.ubifs_znode* %87, %struct.ubifs_znode** %12, align 8
  %88 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %89 = call i64 @IS_ERR(%struct.ubifs_znode* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %93 = call i32 @PTR_ERR(%struct.ubifs_znode* %92)
  store i32 %93, i32* %5, align 4
  br label %168

94:                                               ; preds = %81
  br label %45

95:                                               ; preds = %55
  %96 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %97 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %8, align 8
  store %struct.ubifs_znode* %96, %struct.ubifs_znode** %97, align 8
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %95
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %102 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %103 = call i32 @is_hash_key(%struct.ubifs_info* %101, %union.ubifs_key* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, -1
  br i1 %108, label %109, label %118

109:                                              ; preds = %105, %100, %95
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %112 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %113, i32 %115)
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %5, align 4
  br label %168

118:                                              ; preds = %105
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @tnc_prev(%struct.ubifs_info* %119, %struct.ubifs_znode** %12, i32* %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @ENOENT, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %118
  %127 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %128 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load i32*, i32** %9, align 8
  store i32 -1, i32* %131, align 4
  store i32 0, i32* %5, align 4
  br label %168

132:                                              ; preds = %118
  %133 = load i32, i32* %10, align 4
  %134 = icmp slt i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %5, align 4
  br label %168

140:                                              ; preds = %132
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %142 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %143 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %144 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %143, i32 0, i32 2
  %145 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %144, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %145, i64 %148
  %150 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %149, i32 0, i32 0
  %151 = call i64 @keys_cmp(%struct.ubifs_info* %141, %union.ubifs_key* %142, i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %140
  %154 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %155 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  %158 = load i32*, i32** %9, align 8
  store i32 -1, i32* %158, align 4
  store i32 0, i32* %5, align 4
  br label %168

159:                                              ; preds = %140
  %160 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %161 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32*, i32** %9, align 8
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %162, i32 %164)
  %166 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %167 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %8, align 8
  store %struct.ubifs_znode* %166, %struct.ubifs_znode** %167, align 8
  store i32 1, i32* %5, align 4
  br label %168

168:                                              ; preds = %159, %153, %138, %126, %109, %91, %37
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @dbg_tnc(i8*, i32, ...) #1

declare dso_local i32 @DBGKEY(%union.ubifs_key*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info*, %struct.ubifs_zbranch*, %struct.ubifs_znode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_search_zbranch(%struct.ubifs_info*, %struct.ubifs_znode*, %union.ubifs_key*, i32*) #1

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @tnc_prev(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

declare dso_local i64 @keys_cmp(%struct.ubifs_info*, %union.ubifs_key*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
