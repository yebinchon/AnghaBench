; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32, %struct.TYPE_4__*, i32*, i32, i32, i32*, %struct.TYPE_4__*, i32*, i32*, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }

@DT_NODE_FREE = common dso_local global i32 0, align 4
@DT_IDFLG_ORPHAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_node_free(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @DT_NODE_FREE, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %189 [
    i32 130, label %11
    i32 139, label %11
    i32 129, label %11
    i32 128, label %18
    i32 140, label %18
    i32 133, label %18
    i32 137, label %44
    i32 135, label %56
    i32 136, label %68
    i32 142, label %91
    i32 141, label %91
    i32 144, label %103
    i32 134, label %118
    i32 143, label %131
    i32 138, label %157
    i32 131, label %175
    i32 132, label %185
  ]

11:                                               ; preds = %1, %1, %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 20
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @free(i32* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 20
  store i32* null, i32** %17, align 8
  br label %189

18:                                               ; preds = %1, %1, %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 19
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DT_IDFLG_ORPHAN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 19
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = call i32 @dt_ident_destroy(%struct.TYPE_5__* %35)
  br label %37

37:                                               ; preds = %32, %23
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 19
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %39, align 8
  br label %40

40:                                               ; preds = %37, %18
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 18
  %43 = call i32 @dt_node_list_free(i32* %42)
  br label %189

44:                                               ; preds = %1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 17
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 17
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  call void @dt_node_free(%struct.TYPE_4__* %52)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 17
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %54, align 8
  br label %55

55:                                               ; preds = %49, %44
  br label %189

56:                                               ; preds = %1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 14
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 14
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  call void @dt_node_free(%struct.TYPE_4__* %64)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 14
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %66, align 8
  br label %67

67:                                               ; preds = %61, %56
  br label %68

68:                                               ; preds = %1, %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 16
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 16
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  call void @dt_node_free(%struct.TYPE_4__* %76)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 16
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %78, align 8
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 15
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = icmp ne %struct.TYPE_4__* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 15
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  call void @dt_node_free(%struct.TYPE_4__* %87)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 15
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %89, align 8
  br label %90

90:                                               ; preds = %84, %79
  br label %189

91:                                               ; preds = %1, %1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 14
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = icmp ne %struct.TYPE_4__* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 14
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  call void @dt_node_free(%struct.TYPE_4__* %99)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 14
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %101, align 8
  br label %102

102:                                              ; preds = %96, %91
  br label %189

103:                                              ; preds = %1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 13
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = icmp ne %struct.TYPE_4__* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 13
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  call void @dt_node_free(%struct.TYPE_4__* %111)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 13
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %113, align 8
  br label %114

114:                                              ; preds = %108, %103
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 12
  %117 = call i32 @dt_node_list_free(i32* %116)
  br label %189

118:                                              ; preds = %1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 11
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @free(i32* %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 11
  store i32* null, i32** %124, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 10
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @free(i32* %127)
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 10
  store i32* null, i32** %130, align 8
  br label %189

131:                                              ; preds = %1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 9
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = icmp ne %struct.TYPE_4__* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 9
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  call void @dt_node_free(%struct.TYPE_4__* %139)
  br label %140

140:                                              ; preds = %136, %131
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 8
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 8
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @dt_idhash_destroy(i32* %148)
  br label %150

150:                                              ; preds = %145, %140
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 7
  %153 = call i32 @dt_node_list_free(i32* %152)
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 6
  %156 = call i32 @dt_node_list_free(i32* %155)
  br label %189

157:                                              ; preds = %1
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 5
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @free(i32* %160)
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 5
  store i32* null, i32** %163, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = icmp ne %struct.TYPE_4__* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %157
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  call void @dt_node_free(%struct.TYPE_4__* %171)
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %173, align 8
  br label %174

174:                                              ; preds = %168, %157
  br label %189

175:                                              ; preds = %1
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 3
  %178 = call i32 @dt_node_list_free(i32* %177)
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @free(i32* %181)
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 2
  store i32* null, i32** %184, align 8
  br label %189

185:                                              ; preds = %1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = call i32 @dt_node_list_free(i32* %187)
  br label %189

189:                                              ; preds = %1, %185, %175, %174, %150, %118, %114, %102, %90, %55, %40, %11
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @dt_ident_destroy(%struct.TYPE_5__*) #1

declare dso_local i32 @dt_node_list_free(i32*) #1

declare dso_local i32 @dt_idhash_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
