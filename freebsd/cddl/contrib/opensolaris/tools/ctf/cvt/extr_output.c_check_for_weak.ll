; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_output.c_check_for_weak.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_output.c_check_for_weak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64, i64, i64, i64 }

@STB_WEAK = common dso_local global i64 0, align 8
@STT_FILE = common dso_local global i64 0, align 8
@STB_LOCAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, %struct.TYPE_10__*, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i8**)* @check_for_weak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_weak(%struct.TYPE_9__* %0, i8* %1, %struct.TYPE_10__* %2, i32 %3, %struct.TYPE_10__* %4, %struct.TYPE_9__* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_9__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_9__, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %19, align 4
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @GELF_ST_BIND(i64 %27)
  %29 = load i64, i64* @STB_WEAK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %137

32:                                               ; preds = %7
  store i32 0, i32* %20, align 4
  br label %33

33:                                               ; preds = %124, %32
  %34 = load i32, i32* %20, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %127

37:                                               ; preds = %33
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = load i32, i32* %20, align 4
  %40 = call i32* @gelf_getsym(%struct.TYPE_10__* %38, i32 %39, %struct.TYPE_9__* %21)
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %124

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @GELF_ST_TYPE(i64 %45)
  store i64 %46, i64* %22, align 8
  %47 = load i64, i64* %22, align 8
  %48 = load i64, i64* @STT_FILE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8* %58, i8** %16, align 8
  br label %59

59:                                               ; preds = %50, %43
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @GELF_ST_TYPE(i64 %62)
  %64 = load i64, i64* %22, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66, %59
  br label %124

74:                                               ; preds = %66
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %124

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @GELF_ST_BIND(i64 %84)
  %86 = load i64, i64* @STB_WEAK, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %124

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %124

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @GELF_ST_BIND(i64 %99)
  %101 = load i64, i64* @STB_LOCAL, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %97
  %104 = load i8*, i8** %16, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = load i8*, i8** %10, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = load i8*, i8** %16, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = call i64 @strcmp(i8* %110, i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109, %106, %103
  store i32 1, i32* %19, align 4
  %115 = load i8*, i8** %16, align 8
  store i8* %115, i8** %17, align 8
  %116 = bitcast %struct.TYPE_9__* %18 to i8*
  %117 = bitcast %struct.TYPE_9__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 40, i1 false)
  br label %124

118:                                              ; preds = %109, %97
  %119 = load i8*, i8** %16, align 8
  %120 = load i8**, i8*** %15, align 8
  store i8* %119, i8** %120, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %122 = bitcast %struct.TYPE_9__* %121 to i8*
  %123 = bitcast %struct.TYPE_9__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 %123, i64 40, i1 false)
  store i32 1, i32* %8, align 4
  br label %137

124:                                              ; preds = %114, %96, %88, %81, %73, %42
  %125 = load i32, i32* %20, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %20, align 4
  br label %33

127:                                              ; preds = %33
  %128 = load i32, i32* %19, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i8*, i8** %17, align 8
  %132 = load i8**, i8*** %15, align 8
  store i8* %131, i8** %132, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %134 = bitcast %struct.TYPE_9__* %133 to i8*
  %135 = bitcast %struct.TYPE_9__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %135, i64 40, i1 false)
  store i32 1, i32* %8, align 4
  br label %137

136:                                              ; preds = %127
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %136, %130, %118, %31
  %138 = load i32, i32* %8, align 4
  ret i32 %138
}

declare dso_local i64 @GELF_ST_BIND(i64) #1

declare dso_local i32* @gelf_getsym(%struct.TYPE_10__*, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @GELF_ST_TYPE(i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
