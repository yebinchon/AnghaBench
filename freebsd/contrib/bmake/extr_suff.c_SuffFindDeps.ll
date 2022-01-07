; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_SuffFindDeps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_SuffFindDeps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@OP_DEPS_FOUND = common dso_local global i32 0, align 4
@TARGET = common dso_local global i32 0, align 4
@PREFIX = common dso_local global i32 0, align 4
@SUFF = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SuffFindDeps (%s)\0A\00", align 1
@OP_ARCHV = common dso_local global i32 0, align 4
@OP_LIB = common dso_local global i32 0, align 4
@sufflist = common dso_local global i32 0, align 4
@LIBSUFF = common dso_local global i32 0, align 4
@SuffSuffHasNameP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @SuffFindDeps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SuffFindDeps(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @OP_DEPS_FOUND, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %125

14:                                               ; preds = %2
  %15 = load i32, i32* @OP_DEPS_FOUND, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @TARGET, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  br label %34

30:                                               ; preds = %20
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i8* [ %29, %26 ], [ %33, %30 ]
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = call i32 @Var_Set(i32 %21, i8* %35, %struct.TYPE_9__* %36, i32 0)
  %38 = load i32, i32* @PREFIX, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = call i32 @Var_Set(i32 %38, i8* %41, %struct.TYPE_9__* %42, i32 0)
  %44 = load i32, i32* @SUFF, align 4
  %45 = call i64 @DEBUG(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load i32, i32* @debug_file, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %47, %34
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @OP_ARCHV, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @SuffFindArchiveDeps(%struct.TYPE_9__* %61, i32 %62)
  br label %125

64:                                               ; preds = %53
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @OP_LIB, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %120

71:                                               ; preds = %64
  %72 = load i32, i32* @sufflist, align 4
  %73 = load i32, i32* @LIBSUFF, align 4
  %74 = load i32, i32* @SuffSuffHasNameP, align 4
  %75 = call i32* @Lst_Find(i32 %72, i32 %73, i32 %74)
  store i32* %75, i32** %5, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = icmp ne %struct.TYPE_8__* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80, %71
  %88 = load i32*, i32** %5, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load i32*, i32** %5, align 8
  %92 = call i64 @Lst_Datum(i32* %91)
  %93 = inttoptr i64 %92 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %6, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %95, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @Arch_FindLib(%struct.TYPE_9__* %102, i32 %105)
  br label %116

107:                                              ; preds = %87
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %109, align 8
  %110 = load i32, i32* @TARGET, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = call i32 @Var_Set(i32 %110, i8* %113, %struct.TYPE_9__* %114, i32 0)
  br label %116

116:                                              ; preds = %107, %90
  %117 = load i32, i32* @PREFIX, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = call i32 @Var_Set(i32 %117, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %118, i32 0)
  br label %124

120:                                              ; preds = %64
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @SuffFindNormalDeps(%struct.TYPE_9__* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %13, %124, %60
  ret void
}

declare dso_local i32 @Var_Set(i32, i8*, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @SuffFindArchiveDeps(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @Lst_Find(i32, i32, i32) #1

declare dso_local i64 @Lst_Datum(i32*) #1

declare dso_local i32 @Arch_FindLib(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @SuffFindNormalDeps(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
