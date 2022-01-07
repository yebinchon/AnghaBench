; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_mangle_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_mangle_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32** }
%struct.TYPE_33__ = type { %struct.TYPE_37__, %struct.TYPE_32__* }
%struct.TYPE_37__ = type { i32, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_32__ = type { i64, %struct.TYPE_31__, i64, i64, i64, i64, i64 }
%struct.TYPE_31__ = type { %struct.TYPE_30__, %struct.TYPE_38__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_26__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_44__, %struct.TYPE_40__ }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { %struct.TYPE_41__*, i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_40__ = type { %struct.TYPE_39__*, i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { i32, i32 }

@N_DEBUG = common dso_local global i32 0, align 4
@BSF_DEBUGGING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coff_mangle_symbols(%struct.TYPE_34__* %0) #0 {
  %2 = alloca %struct.TYPE_34__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %2, align 8
  %10 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %11 = call i32 @bfd_get_symcount(%struct.TYPE_34__* %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %12, i32 0, i32 0
  %14 = load i32**, i32*** %13, align 8
  store i32** %14, i32*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %192, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %195

19:                                               ; preds = %15
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %21 = load i32**, i32*** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = call %struct.TYPE_33__* @coff_symbol_from(%struct.TYPE_34__* %20, i32* %25)
  store %struct.TYPE_33__* %26, %struct.TYPE_33__** %6, align 8
  %27 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %28 = icmp ne %struct.TYPE_33__* %27, null
  br i1 %28, label %29, label %191

29:                                               ; preds = %19
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %31, align 8
  %33 = icmp ne %struct.TYPE_32__* %32, null
  br i1 %33, label %34, label %191

34:                                               ; preds = %29
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %36, align 8
  store %struct.TYPE_32__* %37, %struct.TYPE_32__** %8, align 8
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %34
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.TYPE_32__*
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 8
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %42, %34
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %99

64:                                               ; preds = %59
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_36__*, %struct.TYPE_36__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_35__*, %struct.TYPE_35__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %79 = call i32 @bfd_coff_linesz(%struct.TYPE_34__* %78)
  %80 = mul nsw i32 %77, %79
  %81 = add nsw i32 %72, %80
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 8
  %86 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %87 = load i32, i32* @N_DEBUG, align 4
  %88 = call %struct.TYPE_36__* @coff_section_from_bfd_index(%struct.TYPE_34__* %86, i32 %87)
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %90, i32 0, i32 1
  store %struct.TYPE_36__* %88, %struct.TYPE_36__** %91, align 8
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BSF_DEBUGGING, align 4
  %97 = and i32 %95, %96
  %98 = call i32 @BFD_ASSERT(i32 %97)
  br label %99

99:                                               ; preds = %64, %59
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %187, %99
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %101, %106
  br i1 %107, label %108, label %190

108:                                              ; preds = %100
  %109 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i64 1
  store %struct.TYPE_32__* %113, %struct.TYPE_32__** %9, align 8
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %108
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_39__*, %struct.TYPE_39__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %132, i32 0, i32 1
  store i32 %127, i32* %133, align 8
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %134, i32 0, i32 3
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %118, %108
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %136
  %142 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_41__*, %struct.TYPE_41__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %159, i32 0, i32 1
  store i32 %152, i32* %160, align 8
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 2
  store i64 0, i64* %162, align 8
  br label %163

163:                                              ; preds = %141, %136
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %186

168:                                              ; preds = %163
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 1
  store i32 %177, i32* %183, align 8
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 0
  store i64 0, i64* %185, align 8
  br label %186

186:                                              ; preds = %168, %163
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %7, align 4
  br label %100

190:                                              ; preds = %100
  br label %191

191:                                              ; preds = %190, %29, %19
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %5, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %5, align 4
  br label %15

195:                                              ; preds = %15
  ret void
}

declare dso_local i32 @bfd_get_symcount(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_33__* @coff_symbol_from(%struct.TYPE_34__*, i32*) #1

declare dso_local i32 @bfd_coff_linesz(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_36__* @coff_section_from_bfd_index(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
