; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_fixup_tdescs.c_fix_ptr_to_struct.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_fixup_tdescs.c_fix_ptr_to_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, i64, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [5 x i8] c"vmem\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"id_space\00", align 1
@__const.fix_ptr_to_struct.strs = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"is_vmem\00", align 1
@__const.fix_ptr_to_struct.mems = private unnamed_addr constant [2 x i8*] [i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"vmem_t\00", align 1
@TYPEDEF = common dso_local global i64 0, align 8
@STRUCT = common dso_local global i64 0, align 8
@POINTER = common dso_local global i64 0, align 8
@FORWARD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Fixed %s->%s => ptr struct vmem bug\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @fix_ptr_to_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_ptr_to_struct(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca [2 x i8*], align 16
  %4 = alloca [2 x i8*], align 16
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %10 = bitcast [2 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([2 x i8*]* @__const.fix_ptr_to_struct.strs to i8*), i64 16, i1 false)
  %11 = bitcast [2 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([2 x i8*]* @__const.fix_ptr_to_struct.mems to i8*), i64 16, i1 false)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  %12 = call %struct.TYPE_7__* @lookupname(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TYPEDEF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %1
  br label %147

21:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %144, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %147

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call %struct.TYPE_7__* @lookupname(i8* %29)
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %6, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @STRUCT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %25
  br label %144

39:                                               ; preds = %32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %8, align 8
  br label %43

43:                                               ; preds = %139, %39
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %143

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @streq(i64 %55, i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  br label %139

63:                                               ; preds = %52, %46
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @POINTER, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %108, label %71

71:                                               ; preds = %63
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %108, label %78

78:                                               ; preds = %71
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @STRUCT, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @FORWARD, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %108, label %98

98:                                               ; preds = %88, %78
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @streq(i64 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %98, %88, %71, %63
  br label %139

109:                                              ; preds = %98
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @debug(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %113, i64 %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = icmp ne %struct.TYPE_7__* %118, null
  br i1 %119, label %135, label %120

120:                                              ; preds = %109
  %121 = call %struct.TYPE_7__* @xcalloc(i32 40)
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %5, align 8
  %122 = load i64, i64* @POINTER, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = sext i32 %127 to i64
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store %struct.TYPE_7__* %132, %struct.TYPE_7__** %134, align 8
  br label %135

135:                                              ; preds = %120, %109
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store %struct.TYPE_7__* %136, %struct.TYPE_7__** %138, align 8
  br label %139

139:                                              ; preds = %135, %108, %62
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  store %struct.TYPE_9__* %142, %struct.TYPE_9__** %8, align 8
  br label %43

143:                                              ; preds = %43
  br label %144

144:                                              ; preds = %143, %38
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %22

147:                                              ; preds = %20, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_7__* @lookupname(i8*) #2

declare dso_local i32 @streq(i64, i8*) #2

declare dso_local i32 @debug(i32, i8*, i8*, i64) #2

declare dso_local %struct.TYPE_7__* @xcalloc(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
