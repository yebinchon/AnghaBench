; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_generic_link_add_symbol_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_generic_link_add_symbol_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.bfd_link_info = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { %struct.generic_link_hash_entry* }
%struct.generic_link_hash_entry = type { %struct.TYPE_15__*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.bfd_link_hash_entry = type { i32 }

@BSF_INDIRECT = common dso_local global i32 0, align 4
@BSF_WARNING = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_CONSTRUCTOR = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bfd_link_hash_new = common dso_local global i64 0, align 8
@BSF_OLD_COMMON = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.bfd_link_info*, i32, %struct.TYPE_15__**, i32)* @generic_link_add_symbol_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_link_add_symbol_list(%struct.TYPE_14__* %0, %struct.bfd_link_info* %1, i32 %2, %struct.TYPE_15__** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.bfd_link_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__**, align 8
  %13 = alloca %struct.TYPE_15__**, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.generic_link_hash_entry*, align 8
  %18 = alloca %struct.bfd_link_hash_entry*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_15__** %3, %struct.TYPE_15__*** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %10, align 8
  store %struct.TYPE_15__** %19, %struct.TYPE_15__*** %12, align 8
  %20 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %10, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %20, i64 %22
  store %struct.TYPE_15__** %23, %struct.TYPE_15__*** %13, align 8
  br label %24

24:                                               ; preds = %203, %5
  %25 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  %26 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %13, align 8
  %27 = icmp ult %struct.TYPE_15__** %25, %26
  br i1 %27, label %28, label %206

28:                                               ; preds = %24
  %29 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %14, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BSF_INDIRECT, align 4
  %35 = load i32, i32* @BSF_WARNING, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @BSF_GLOBAL, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @BSF_CONSTRUCTOR, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @BSF_WEAK, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %33, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %28
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %47 = call i32 @bfd_get_section(%struct.TYPE_15__* %46)
  %48 = call i64 @bfd_is_und_section(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %52 = call i32 @bfd_get_section(%struct.TYPE_15__* %51)
  %53 = call i64 @bfd_is_com_section(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %57 = call i32 @bfd_get_section(%struct.TYPE_15__* %56)
  %58 = call i64 @bfd_is_ind_section(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %202

60:                                               ; preds = %55, %50, %45, %28
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %62 = call i8* @bfd_asymbol_name(%struct.TYPE_15__* %61)
  store i8* %62, i8** %15, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BSF_INDIRECT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %60
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @bfd_is_ind_section(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %69, %60
  %76 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %76, i64 1
  %78 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %13, align 8
  %79 = icmp ult %struct.TYPE_15__** %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %81, i32 1
  store %struct.TYPE_15__** %82, %struct.TYPE_15__*** %12, align 8
  %83 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = call i8* @bfd_asymbol_name(%struct.TYPE_15__* %84)
  store i8* %85, i8** %16, align 8
  br label %107

86:                                               ; preds = %75, %69
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @BSF_WARNING, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %94, i64 1
  %96 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %13, align 8
  %97 = icmp ult %struct.TYPE_15__** %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i8*, i8** %15, align 8
  store i8* %99, i8** %16, align 8
  %100 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %100, i32 1
  store %struct.TYPE_15__** %101, %struct.TYPE_15__*** %12, align 8
  %102 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = call i8* @bfd_asymbol_name(%struct.TYPE_15__* %103)
  store i8* %104, i8** %15, align 8
  br label %106

105:                                              ; preds = %93, %86
  store i8* null, i8** %16, align 8
  br label %106

106:                                              ; preds = %105, %98
  br label %107

107:                                              ; preds = %106, %80
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %18, align 8
  %108 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %115 = call i32 @bfd_get_section(%struct.TYPE_15__* %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i8*, i8** %16, align 8
  %120 = load i32, i32* @FALSE, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info* %108, %struct.TYPE_14__* %109, i8* %110, i32 %113, i32 %115, i32 %118, i8* %119, i32 %120, i32 %121, %struct.bfd_link_hash_entry** %18)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %107
  %125 = load i32, i32* @FALSE, align 4
  store i32 %125, i32* %6, align 4
  br label %208

126:                                              ; preds = %107
  %127 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %18, align 8
  %128 = bitcast %struct.bfd_link_hash_entry* %127 to %struct.generic_link_hash_entry*
  store %struct.generic_link_hash_entry* %128, %struct.generic_link_hash_entry** %17, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @BSF_CONSTRUCTOR, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %126
  %136 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %17, align 8
  %137 = icmp eq %struct.generic_link_hash_entry* %136, null
  br i1 %137, label %145, label %138

138:                                              ; preds = %135
  %139 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %17, align 8
  %140 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @bfd_link_hash_new, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %138, %135
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  store %struct.generic_link_hash_entry* null, %struct.generic_link_hash_entry** %148, align 8
  br label %203

149:                                              ; preds = %138, %126
  %150 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %151 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %150, i32 0, i32 0
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %154, %157
  br i1 %158, label %159, label %197

159:                                              ; preds = %149
  %160 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %17, align 8
  %161 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %160, i32 0, i32 0
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %161, align 8
  %163 = icmp eq %struct.TYPE_15__* %162, null
  br i1 %163, label %181, label %164

164:                                              ; preds = %159
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %166 = call i32 @bfd_get_section(%struct.TYPE_15__* %165)
  %167 = call i64 @bfd_is_und_section(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %196, label %169

169:                                              ; preds = %164
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %171 = call i32 @bfd_get_section(%struct.TYPE_15__* %170)
  %172 = call i64 @bfd_is_com_section(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %17, align 8
  %176 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %175, i32 0, i32 0
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = call i32 @bfd_get_section(%struct.TYPE_15__* %177)
  %179 = call i64 @bfd_is_und_section(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %196

181:                                              ; preds = %174, %169, %159
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %183 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %17, align 8
  %184 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %183, i32 0, i32 0
  store %struct.TYPE_15__* %182, %struct.TYPE_15__** %184, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %186 = call i32 @bfd_get_section(%struct.TYPE_15__* %185)
  %187 = call i64 @bfd_is_com_section(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %181
  %190 = load i32, i32* @BSF_OLD_COMMON, align 4
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %189, %181
  br label %196

196:                                              ; preds = %195, %174, %164
  br label %197

197:                                              ; preds = %196, %149
  %198 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %17, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  store %struct.generic_link_hash_entry* %198, %struct.generic_link_hash_entry** %201, align 8
  br label %202

202:                                              ; preds = %197, %55
  br label %203

203:                                              ; preds = %202, %145
  %204 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %204, i32 1
  store %struct.TYPE_15__** %205, %struct.TYPE_15__*** %12, align 8
  br label %24

206:                                              ; preds = %24
  %207 = load i32, i32* @TRUE, align 4
  store i32 %207, i32* %6, align 4
  br label %208

208:                                              ; preds = %206, %124
  %209 = load i32, i32* %6, align 4
  ret i32 %209
}

declare dso_local i64 @bfd_is_und_section(i32) #1

declare dso_local i32 @bfd_get_section(%struct.TYPE_15__*) #1

declare dso_local i64 @bfd_is_com_section(i32) #1

declare dso_local i64 @bfd_is_ind_section(i32) #1

declare dso_local i8* @bfd_asymbol_name(%struct.TYPE_15__*) #1

declare dso_local i32 @_bfd_generic_link_add_one_symbol(%struct.bfd_link_info*, %struct.TYPE_14__*, i8*, i32, i32, i32, i8*, i32, i32, %struct.bfd_link_hash_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
