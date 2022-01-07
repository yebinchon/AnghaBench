; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_can_merge_gots.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_can_merge_gots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpha_elf_link_hash_entry = type { %struct.alpha_elf_got_entry*, %struct.TYPE_12__ }
%struct.alpha_elf_got_entry = type { i64, i64, i64, i32*, %struct.alpha_elf_got_entry* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }

@MAX_GOT_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @elf64_alpha_can_merge_gots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf64_alpha_can_merge_gots(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.alpha_elf_link_hash_entry**, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.alpha_elf_got_entry*, align 8
  %13 = alloca %struct.alpha_elf_got_entry*, align 8
  %14 = alloca %struct.alpha_elf_link_hash_entry*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.TYPE_15__* @alpha_elf_tdata(i32* %15)
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call %struct.TYPE_15__* @alpha_elf_tdata(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %19, %23
  %25 = load i32, i32* @MAX_GOT_SIZE, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %3, align 4
  br label %181

29:                                               ; preds = %2
  %30 = load i32*, i32** %5, align 8
  %31 = call %struct.TYPE_15__* @alpha_elf_tdata(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @MAX_GOT_SIZE, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %3, align 4
  br label %181

40:                                               ; preds = %29
  %41 = load i32*, i32** %5, align 8
  store i32* %41, i32** %7, align 8
  br label %42

42:                                               ; preds = %174, %40
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %179

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = call %struct.alpha_elf_link_hash_entry** @alpha_elf_sym_hashes(i32* %46)
  store %struct.alpha_elf_link_hash_entry** %47, %struct.alpha_elf_link_hash_entry*** %8, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call %struct.TYPE_14__* @elf_tdata(i32* %48)
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %9, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %52 = call i32 @NUM_SHDR_ENTRIES(%struct.TYPE_13__* %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %170, %45
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %173

61:                                               ; preds = %57
  %62 = load %struct.alpha_elf_link_hash_entry**, %struct.alpha_elf_link_hash_entry*** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %62, i64 %64
  %66 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %65, align 8
  store %struct.alpha_elf_link_hash_entry* %66, %struct.alpha_elf_link_hash_entry** %14, align 8
  br label %67

67:                                               ; preds = %85, %61
  %68 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %14, align 8
  %69 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @bfd_link_hash_indirect, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %67
  %76 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %14, align 8
  %77 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @bfd_link_hash_warning, align 8
  %82 = icmp eq i64 %80, %81
  br label %83

83:                                               ; preds = %75, %67
  %84 = phi i1 [ true, %67 ], [ %82, %75 ]
  br i1 %84, label %85, label %94

85:                                               ; preds = %83
  %86 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %14, align 8
  %87 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.alpha_elf_link_hash_entry*
  store %struct.alpha_elf_link_hash_entry* %93, %struct.alpha_elf_link_hash_entry** %14, align 8
  br label %67

94:                                               ; preds = %83
  %95 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %14, align 8
  %96 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %95, i32 0, i32 0
  %97 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %96, align 8
  store %struct.alpha_elf_got_entry* %97, %struct.alpha_elf_got_entry** %13, align 8
  br label %98

98:                                               ; preds = %165, %94
  %99 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %13, align 8
  %100 = icmp ne %struct.alpha_elf_got_entry* %99, null
  br i1 %100, label %101, label %169

101:                                              ; preds = %98
  %102 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %13, align 8
  %103 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %165

107:                                              ; preds = %101
  %108 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %13, align 8
  %109 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = icmp ne i32* %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %165

114:                                              ; preds = %107
  %115 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %14, align 8
  %116 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %115, i32 0, i32 0
  %117 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %116, align 8
  store %struct.alpha_elf_got_entry* %117, %struct.alpha_elf_got_entry** %12, align 8
  br label %118

118:                                              ; preds = %145, %114
  %119 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %120 = icmp ne %struct.alpha_elf_got_entry* %119, null
  br i1 %120, label %121, label %149

121:                                              ; preds = %118
  %122 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %123 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = icmp eq i32* %124, %125
  br i1 %126, label %127, label %144

127:                                              ; preds = %121
  %128 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %129 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %13, align 8
  %132 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %130, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %127
  %136 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %137 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %13, align 8
  %140 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %138, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %164

144:                                              ; preds = %135, %127, %121
  br label %145

145:                                              ; preds = %144
  %146 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %147 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %146, i32 0, i32 4
  %148 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %147, align 8
  store %struct.alpha_elf_got_entry* %148, %struct.alpha_elf_got_entry** %12, align 8
  br label %118

149:                                              ; preds = %118
  %150 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %13, align 8
  %151 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @alpha_got_entry_size(i64 %152)
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @MAX_GOT_SIZE, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %149
  %162 = load i32, i32* @FALSE, align 4
  store i32 %162, i32* %3, align 4
  br label %181

163:                                              ; preds = %149
  br label %164

164:                                              ; preds = %163, %143
  br label %165

165:                                              ; preds = %164, %113, %106
  %166 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %13, align 8
  %167 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %166, i32 0, i32 4
  %168 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %167, align 8
  store %struct.alpha_elf_got_entry* %168, %struct.alpha_elf_got_entry** %13, align 8
  br label %98

169:                                              ; preds = %98
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %57

173:                                              ; preds = %57
  br label %174

174:                                              ; preds = %173
  %175 = load i32*, i32** %7, align 8
  %176 = call %struct.TYPE_15__* @alpha_elf_tdata(i32* %175)
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %7, align 8
  br label %42

179:                                              ; preds = %42
  %180 = load i32, i32* @TRUE, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %179, %161, %38, %27
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local %struct.TYPE_15__* @alpha_elf_tdata(i32*) #1

declare dso_local %struct.alpha_elf_link_hash_entry** @alpha_elf_sym_hashes(i32*) #1

declare dso_local %struct.TYPE_14__* @elf_tdata(i32*) #1

declare dso_local i32 @NUM_SHDR_ENTRIES(%struct.TYPE_13__*) #1

declare dso_local i64 @alpha_got_entry_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
