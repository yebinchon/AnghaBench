; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_die.c__dwarf_die_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_die.c__dwarf_die_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_dwarf_die_link(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, %struct.TYPE_7__* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %10, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %87

18:                                               ; preds = %5
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = icmp ne %struct.TYPE_7__* %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = icmp eq %struct.TYPE_7__* %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %41, align 8
  br label %42

42:                                               ; preds = %37, %29
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %44, align 8
  br label %45

45:                                               ; preds = %42, %23
  br label %46

46:                                               ; preds = %45, %18
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %11, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %51 = icmp ne %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %58, %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %11, align 8
  br label %53

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %46
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = icmp eq %struct.TYPE_7__* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %81, align 8
  br label %86

82:                                               ; preds = %63
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %85, align 8
  br label %86

86:                                               ; preds = %82, %69
  br label %87

87:                                               ; preds = %86, %5
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = icmp ne %struct.TYPE_7__* %88, null
  br i1 %89, label %90, label %116

90:                                               ; preds = %87
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = icmp ne %struct.TYPE_7__* %93, null
  br i1 %94, label %95, label %109

95:                                               ; preds = %90
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = icmp ne %struct.TYPE_7__* %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %107, align 8
  br label %108

108:                                              ; preds = %101, %95
  br label %109

109:                                              ; preds = %108, %90
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  store %struct.TYPE_7__* %110, %struct.TYPE_7__** %112, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  store %struct.TYPE_7__* %113, %struct.TYPE_7__** %115, align 8
  br label %116

116:                                              ; preds = %109, %87
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %118 = icmp ne %struct.TYPE_7__* %117, null
  br i1 %118, label %119, label %145

119:                                              ; preds = %116
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = icmp ne %struct.TYPE_7__* %122, null
  br i1 %123, label %124, label %138

124:                                              ; preds = %119
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %129 = icmp ne %struct.TYPE_7__* %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %134, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %136, align 8
  br label %137

137:                                              ; preds = %130, %124
  br label %138

138:                                              ; preds = %137, %119
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store %struct.TYPE_7__* %139, %struct.TYPE_7__** %141, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  store %struct.TYPE_7__* %142, %struct.TYPE_7__** %144, align 8
  br label %145

145:                                              ; preds = %138, %116
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %147 = icmp ne %struct.TYPE_7__* %146, null
  br i1 %147, label %148, label %174

148:                                              ; preds = %145
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = icmp ne %struct.TYPE_7__* %151, null
  br i1 %152, label %153, label %167

153:                                              ; preds = %148
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %158 = icmp ne %struct.TYPE_7__* %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %163, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %165, align 8
  br label %166

166:                                              ; preds = %159, %153
  br label %167

167:                                              ; preds = %166, %148
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  store %struct.TYPE_7__* %168, %struct.TYPE_7__** %170, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  store %struct.TYPE_7__* %171, %struct.TYPE_7__** %173, align 8
  br label %174

174:                                              ; preds = %167, %145
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
