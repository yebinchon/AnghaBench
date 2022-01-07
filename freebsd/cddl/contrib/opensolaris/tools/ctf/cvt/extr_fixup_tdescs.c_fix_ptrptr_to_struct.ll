; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_fixup_tdescs.c_fix_ptrptr_to_struct.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_fixup_tdescs.c_fix_ptrptr_to_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, i64, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"fdbuffer\00", align 1
@__const.fix_ptrptr_to_struct.strs = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"a_objectdir\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"fd_shadow\00", align 1
@__const.fix_ptrptr_to_struct.mems = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"vnode\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@__const.fix_ptrptr_to_struct.acts = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str.6 = private unnamed_addr constant [8 x i8] c"vnode_t\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"page_t\00", align 1
@__const.fix_ptrptr_to_struct.tgts = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)], align 16
@STRUCT = common dso_local global i64 0, align 8
@POINTER = common dso_local global i64 0, align 8
@TYPEDEF = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"Fixed %s->%s => ptrptr struct %s bug\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @fix_ptrptr_to_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_ptrptr_to_struct(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca [2 x i8*], align 16
  %4 = alloca [2 x i8*], align 16
  %5 = alloca [2 x i8*], align 16
  %6 = alloca [2 x i8*], align 16
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %14 = bitcast [2 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([2 x i8*]* @__const.fix_ptrptr_to_struct.strs to i8*), i64 16, i1 false)
  %15 = bitcast [2 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([2 x i8*]* @__const.fix_ptrptr_to_struct.mems to i8*), i64 16, i1 false)
  %16 = bitcast [2 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([2 x i8*]* @__const.fix_ptrptr_to_struct.acts to i8*), i64 16, i1 false)
  %17 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([2 x i8*]* @__const.fix_ptrptr_to_struct.tgts to i8*), i64 16, i1 false)
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %180, %1
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %183

21:                                               ; preds = %18
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call %struct.TYPE_7__* @lookupname(i8* %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %7, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @STRUCT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %21
  br label %180

35:                                               ; preds = %28
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %12, align 8
  br label %39

39:                                               ; preds = %54, %35
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %41 = icmp ne %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @streq(i64 %45, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %58

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %12, align 8
  br label %39

58:                                               ; preds = %52, %39
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %60 = icmp ne %struct.TYPE_9__* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  br label %180

62:                                               ; preds = %58
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @POINTER, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %96, label %70

70:                                               ; preds = %62
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %70
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @POINTER, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %96, label %87

87:                                               ; preds = %77
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87, %77, %70, %62
  br label %180

97:                                               ; preds = %87
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  store %struct.TYPE_7__* %104, %struct.TYPE_7__** %8, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @STRUCT, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %120, label %110

110:                                              ; preds = %97
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @streq(i64 %113, i8* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %110, %97
  br label %180

121:                                              ; preds = %110
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call %struct.TYPE_7__* @lookupname(i8* %125)
  store %struct.TYPE_7__* %126, %struct.TYPE_7__** %9, align 8
  %127 = icmp ne %struct.TYPE_7__* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @TYPEDEF, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128, %121
  br label %180

135:                                              ; preds = %128
  %136 = call %struct.TYPE_7__* @xcalloc(i32 40)
  store %struct.TYPE_7__* %136, %struct.TYPE_7__** %11, align 8
  %137 = load i64, i64* @POINTER, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = sext i32 %142 to i64
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  store %struct.TYPE_7__* %147, %struct.TYPE_7__** %149, align 8
  %150 = call %struct.TYPE_7__* @xcalloc(i32 40)
  store %struct.TYPE_7__* %150, %struct.TYPE_7__** %10, align 8
  %151 = load i64, i64* @POINTER, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  %158 = sext i32 %156 to i64
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  store %struct.TYPE_7__* %161, %struct.TYPE_7__** %163, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  store %struct.TYPE_7__* %164, %struct.TYPE_7__** %166, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @debug(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %170, i8* %174, i8* %178)
  br label %180

180:                                              ; preds = %135, %134, %120, %96, %61, %34
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %13, align 4
  br label %18

183:                                              ; preds = %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_7__* @lookupname(i8*) #2

declare dso_local i64 @streq(i64, i8*) #2

declare dso_local %struct.TYPE_7__* @xcalloc(i32) #2

declare dso_local i32 @debug(i32, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
