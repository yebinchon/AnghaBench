; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_group_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_group_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_link_hash_table = type { i32, %struct.TYPE_11__**, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%B section %A exceeds stub group size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc_link_hash_table*, i32, i32)* @group_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @group_sections(%struct.ppc_link_hash_table* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ppc_link_hash_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ppc_link_hash_table* %0, %struct.ppc_link_hash_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 31457280, i32* %5, align 4
  store i32 30720, i32* %8, align 4
  br label %25

24:                                               ; preds = %20
  store i32 29360128, i32* %5, align 4
  store i32 28672, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %25, %3
  %28 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %29 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %28, i32 0, i32 1
  %30 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %29, align 8
  %31 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %32 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %30, i64 %34
  store %struct.TYPE_11__** %35, %struct.TYPE_11__*** %7, align 8
  br label %36

36:                                               ; preds = %210, %27
  %37 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %10, align 8
  br label %39

39:                                               ; preds = %207, %36
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %209

42:                                               ; preds = %39
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %11, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = call %struct.TYPE_12__* @ppc64_elf_section_data(%struct.TYPE_11__* %48)
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %8, align 4
  br label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = icmp sgt i32 %47, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = call i32 @_bfd_error_handler(i32 %67, i32 %70, %struct.TYPE_11__* %71)
  br label %73

73:                                               ; preds = %66, %63, %57
  %74 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %75 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %74, i32 0, i32 2
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %15, align 8
  br label %83

83:                                               ; preds = %123, %73
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %85 = call %struct.TYPE_11__* @PREV_SEC(%struct.TYPE_11__* %84)
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %12, align 8
  %86 = icmp ne %struct.TYPE_11__* %85, null
  br i1 %86, label %87, label %121

87:                                               ; preds = %83
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %90, %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %98 = call %struct.TYPE_12__* @ppc64_elf_section_data(%struct.TYPE_11__* %97)
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %87
  %103 = load i32, i32* %8, align 4
  br label %106

104:                                              ; preds = %87
  %105 = load i32, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = icmp slt i32 %96, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %111 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %110, i32 0, i32 2
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %15, align 8
  %120 = icmp eq i64 %118, %119
  br label %121

121:                                              ; preds = %109, %106, %83
  %122 = phi i1 [ false, %106 ], [ false, %83 ], [ %120, %109 ]
  br i1 %122, label %123, label %125

123:                                              ; preds = %121
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %11, align 8
  br label %83

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %145, %125
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %128 = call %struct.TYPE_11__* @PREV_SEC(%struct.TYPE_11__* %127)
  store %struct.TYPE_11__* %128, %struct.TYPE_11__** %12, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %130 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %131 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %130, i32 0, i32 2
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %137, align 8
  br label %138

138:                                              ; preds = %126
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %141 = icmp ne %struct.TYPE_11__* %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %10, align 8
  %144 = icmp ne %struct.TYPE_11__* %143, null
  br label %145

145:                                              ; preds = %142, %138
  %146 = phi i1 [ false, %138 ], [ %144, %142 ]
  br i1 %146, label %126, label %147

147:                                              ; preds = %145
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %207, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %14, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %207, label %153

153:                                              ; preds = %150
  store i32 0, i32* %13, align 4
  br label %154

154:                                              ; preds = %193, %153
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %156 = icmp ne %struct.TYPE_11__* %155, null
  br i1 %156, label %157, label %191

157:                                              ; preds = %154
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %160, %163
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %13, align 4
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %168 = call %struct.TYPE_12__* @ppc64_elf_section_data(%struct.TYPE_11__* %167)
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %157
  %173 = load i32, i32* %8, align 4
  br label %176

174:                                              ; preds = %157
  %175 = load i32, i32* %5, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %178 = icmp slt i32 %166, %177
  br i1 %178, label %179, label %191

179:                                              ; preds = %176
  %180 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %181 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %180, i32 0, i32 2
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %15, align 8
  %190 = icmp eq i64 %188, %189
  br label %191

191:                                              ; preds = %179, %176, %154
  %192 = phi i1 [ false, %176 ], [ false, %154 ], [ %190, %179 ]
  br i1 %192, label %193, label %206

193:                                              ; preds = %191
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %194, %struct.TYPE_11__** %10, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %196 = call %struct.TYPE_11__* @PREV_SEC(%struct.TYPE_11__* %195)
  store %struct.TYPE_11__* %196, %struct.TYPE_11__** %12, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %198 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %199 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %198, i32 0, i32 2
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  store %struct.TYPE_11__* %197, %struct.TYPE_11__** %205, align 8
  br label %154

206:                                              ; preds = %191
  br label %207

207:                                              ; preds = %206, %150, %147
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %208, %struct.TYPE_11__** %10, align 8
  br label %39

209:                                              ; preds = %39
  br label %210

210:                                              ; preds = %209
  %211 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %211, i32 -1
  store %struct.TYPE_11__** %212, %struct.TYPE_11__*** %7, align 8
  %213 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %214 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %213, i32 0, i32 1
  %215 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %214, align 8
  %216 = icmp ne %struct.TYPE_11__** %211, %215
  br i1 %216, label %36, label %217

217:                                              ; preds = %210
  %218 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %219 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %218, i32 0, i32 1
  %220 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %219, align 8
  %221 = call i32 @free(%struct.TYPE_11__** %220)
  ret void
}

declare dso_local %struct.TYPE_12__* @ppc64_elf_section_data(%struct.TYPE_11__*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_11__* @PREV_SEC(%struct.TYPE_11__*) #1

declare dso_local i32 @free(%struct.TYPE_11__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
