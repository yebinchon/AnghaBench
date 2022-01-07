; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_Make_ExpandUse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_Make_ExpandUse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i8*, i32, i32, i8*, i64, i32, %struct.TYPE_15__* }

@REMAKE = common dso_local global i32 0, align 4
@MAKE = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Make_ExpandUse: examine %s%s\0A\00", align 1
@OP_DOUBLEDEP = common dso_local global i32 0, align 4
@LST_CONCLINK = common dso_local global i32 0, align 4
@OP_ARCHV = common dso_local global i32 0, align 4
@MEMBER = common dso_local global i32 0, align 4
@ARCHIVE = common dso_local global i32 0, align 4
@TARGET = common dso_local global i32 0, align 4
@MakeUnmark = common dso_local global i32 0, align 4
@MakeHandleUse = common dso_local global i32 0, align 4
@OP_MADE = common dso_local global i32 0, align 4
@MakeFindChild = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Warning: %s%s still has %d unmade children\0A\00", align 1
@MakeAddChild = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Make_ExpandUse(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = call %struct.TYPE_15__* @Lst_Duplicate(%struct.TYPE_15__* %8, i32* null)
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %4, align 8
  br label %10

10:                                               ; preds = %181, %88, %25, %1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = call i32 @Lst_IsEmpty(%struct.TYPE_15__* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %182

15:                                               ; preds = %10
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = call i64 @Lst_DeQueue(%struct.TYPE_15__* %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %3, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @REMAKE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %10

26:                                               ; preds = %15
  %27 = load i32, i32* @REMAKE, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @MAKE, align 4
  %33 = call i64 @DEBUG(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load i32, i32* @debug_file, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %42)
  br label %44

44:                                               ; preds = %35, %26
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @OP_DOUBLEDEP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %44
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = call i32 @Lst_IsEmpty(%struct.TYPE_15__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 7
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = call %struct.TYPE_15__* @Lst_Duplicate(%struct.TYPE_15__* %60, i32* null)
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %5, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = load i32, i32* @LST_CONCLINK, align 4
  %65 = call i32 @Lst_Concat(%struct.TYPE_15__* %62, %struct.TYPE_15__* %63, i32 %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %4, align 8
  br label %67

67:                                               ; preds = %57, %51, %44
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @OP_ARCHV, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %105

74:                                               ; preds = %67
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @strchr(i8* %77, i8 signext 40)
  store i8* %78, i8** %6, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @strchr(i8* %81, i8 signext 41)
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %74
  %86 = load i8*, i8** %7, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %74
  br label %10

89:                                               ; preds = %85
  %90 = load i8*, i8** %6, align 8
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %7, align 8
  store i8 0, i8* %91, align 1
  %92 = load i32, i32* @MEMBER, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %96 = call i32 @Var_Set(i32 %92, i8* %94, %struct.TYPE_15__* %95, i32 0)
  %97 = load i32, i32* @ARCHIVE, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = call i32 @Var_Set(i32 %97, i8* %100, %struct.TYPE_15__* %101, i32 0)
  %103 = load i8*, i8** %6, align 8
  store i8 40, i8* %103, align 1
  %104 = load i8*, i8** %7, align 8
  store i8 41, i8* %104, align 1
  br label %105

105:                                              ; preds = %89, %67
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = call i32 @Dir_MTime(%struct.TYPE_15__* %106, i32 0)
  %108 = load i32, i32* @TARGET, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  br label %121

117:                                              ; preds = %105
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi i8* [ %116, %113 ], [ %120, %117 ]
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %124 = call i32 @Var_Set(i32 %108, i8* %122, %struct.TYPE_15__* %123, i32 0)
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @MakeUnmark, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %130 = call i32 @Lst_ForEach(i32 %127, i32 %128, %struct.TYPE_15__* %129)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @MakeHandleUse, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %136 = call i32 @Lst_ForEach(i32 %133, i32 %134, %struct.TYPE_15__* %135)
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @OP_MADE, align 4
  %141 = and i32 %139, %140
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %121
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %145 = call i32 @Suff_FindDeps(%struct.TYPE_15__* %144)
  br label %169

146:                                              ; preds = %121
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @MakeFindChild, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %152 = call i32 @Lst_ForEach(i32 %149, i32 %150, %struct.TYPE_15__* %151)
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %146
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %160, i32 %163, i64 %166)
  br label %168

168:                                              ; preds = %157, %146
  br label %169

169:                                              ; preds = %168, %143
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @MakeAddChild, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %180 = call i32 @Lst_ForEach(i32 %177, i32 %178, %struct.TYPE_15__* %179)
  br label %181

181:                                              ; preds = %174, %169
  br label %10

182:                                              ; preds = %10
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %184 = call i32 @Lst_Destroy(%struct.TYPE_15__* %183, i32* null)
  ret void
}

declare dso_local %struct.TYPE_15__* @Lst_Duplicate(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @Lst_IsEmpty(%struct.TYPE_15__*) #1

declare dso_local i64 @Lst_DeQueue(%struct.TYPE_15__*) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @Lst_Concat(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @Var_Set(i32, i8*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @Dir_MTime(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @Lst_ForEach(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @Suff_FindDeps(%struct.TYPE_15__*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i64) #1

declare dso_local i32 @Lst_Destroy(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
