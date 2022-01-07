; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_Make_HandleUse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_Make_HandleUse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i8*, i32, i32, i32, i32 }

@OP_USE = common dso_local global i32 0, align 4
@OP_USEBEFORE = common dso_local global i32 0, align 4
@LST_CONCNEW = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@VARF_WANTRES = common dso_local global i32 0, align 4
@TARG_NOCREATE = common dso_local global i32 0, align 4
@OP_OPMASK = common dso_local global i32 0, align 4
@OP_TRANSFORM = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Make_HandleUse(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @OP_USE, align 4
  %13 = load i32, i32* @OP_USEBEFORE, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @Lst_IsEmpty(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %17, %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @OP_USEBEFORE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %23
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @Lst_Duplicate(i32 %36, i32* null)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @LST_CONCNEW, align 4
  %45 = call i32 @Lst_Concat(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @Lst_Destroy(i32 %46, i32* null)
  br label %57

48:                                               ; preds = %23
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @LST_CONCNEW, align 4
  %56 = call i32 @Lst_Concat(i32 %51, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %48, %30
  br label %58

58:                                               ; preds = %57, %17
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @Lst_Open(i32 %61)
  %63 = load i64, i64* @SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %149

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %129, %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @Lst_Next(i32 %69)
  store i32* %70, i32** %5, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %144

72:                                               ; preds = %66
  %73 = load i32*, i32** %5, align 8
  %74 = call i64 @Lst_Datum(i32* %73)
  %75 = inttoptr i64 %74 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %8, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  br label %91

86:                                               ; preds = %72
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @free(i8* %89)
  br label %91

91:                                               ; preds = %86, %80
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = load i32, i32* @VARF_WANTRES, align 4
  %97 = call i8* @Var_Subst(i32* null, i8* %94, %struct.TYPE_7__* %95, i32 %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %129

104:                                              ; preds = %91
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %129

109:                                              ; preds = %104
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @strcmp(i8* %112, i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %109
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* @TARG_NOCREATE, align 4
  %123 = call %struct.TYPE_7__* @Targ_FindNode(i8* %121, i32 %122)
  store %struct.TYPE_7__* %123, %struct.TYPE_7__** %7, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %125 = icmp ne %struct.TYPE_7__* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %8, align 8
  br label %128

128:                                              ; preds = %126, %118
  br label %129

129:                                              ; preds = %128, %109, %104, %91
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %134 = call i32 @Lst_AtEnd(i32 %132, %struct.TYPE_7__* %133)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = call i32 @Lst_AtEnd(i32 %137, %struct.TYPE_7__* %138)
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  br label %66

144:                                              ; preds = %66
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @Lst_Close(i32 %147)
  br label %149

149:                                              ; preds = %144, %58
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @OP_OPMASK, align 4
  %154 = load i32, i32* @OP_USE, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @OP_USEBEFORE, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @OP_TRANSFORM, align 4
  %159 = or i32 %157, %158
  %160 = xor i32 %159, -1
  %161 = and i32 %152, %160
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  ret void
}

declare dso_local i64 @Lst_IsEmpty(i32) #1

declare dso_local i32 @Lst_Duplicate(i32, i32*) #1

declare dso_local i32 @Lst_Concat(i32, i32, i32) #1

declare dso_local i32 @Lst_Destroy(i32, i32*) #1

declare dso_local i64 @Lst_Open(i32) #1

declare dso_local i32* @Lst_Next(i32) #1

declare dso_local i64 @Lst_Datum(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @Var_Subst(i32*, i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @Targ_FindNode(i8*, i32) #1

declare dso_local i32 @Lst_AtEnd(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @Lst_Close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
