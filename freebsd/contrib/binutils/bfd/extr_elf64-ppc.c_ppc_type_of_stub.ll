; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc_type_of_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc_type_of_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.ppc_link_hash_entry = type { %struct.TYPE_20__, %struct.ppc_link_hash_entry*, i64 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_14__ = type { %struct.plt_entry* }
%struct.plt_entry = type { i64, %struct.TYPE_15__, %struct.plt_entry* }
%struct.TYPE_15__ = type { i64 }

@ppc_stub_plt_call = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@ppc_stub_none = common dso_local global i32 0, align 4
@R_PPC64_REL24 = common dso_local global i32 0, align 4
@ppc_stub_long_branch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_13__*, %struct.ppc_link_hash_entry**, i64)* @ppc_type_of_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_type_of_stub(%struct.TYPE_22__* %0, %struct.TYPE_13__* %1, %struct.ppc_link_hash_entry** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.ppc_link_hash_entry**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ppc_link_hash_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ppc_link_hash_entry*, align 8
  %16 = alloca %struct.plt_entry*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.ppc_link_hash_entry** %2, %struct.ppc_link_hash_entry*** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.ppc_link_hash_entry**, %struct.ppc_link_hash_entry*** %8, align 8
  %18 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %17, align 8
  store %struct.ppc_link_hash_entry* %18, %struct.ppc_link_hash_entry** %10, align 8
  %19 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %20 = icmp ne %struct.ppc_link_hash_entry* %19, null
  br i1 %20, label %21, label %134

21:                                               ; preds = %4
  %22 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  store %struct.ppc_link_hash_entry* %22, %struct.ppc_link_hash_entry** %15, align 8
  %23 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %24 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %23, i32 0, i32 1
  %25 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %24, align 8
  %26 = icmp ne %struct.ppc_link_hash_entry* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %29 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %28, i32 0, i32 1
  %30 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %29, align 8
  %31 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %36 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %35, i32 0, i32 1
  %37 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %36, align 8
  store %struct.ppc_link_hash_entry* %37, %struct.ppc_link_hash_entry** %15, align 8
  br label %38

38:                                               ; preds = %34, %27, %21
  %39 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %40 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %77

44:                                               ; preds = %38
  %45 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %46 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load %struct.plt_entry*, %struct.plt_entry** %48, align 8
  store %struct.plt_entry* %49, %struct.plt_entry** %16, align 8
  br label %50

50:                                               ; preds = %72, %44
  %51 = load %struct.plt_entry*, %struct.plt_entry** %16, align 8
  %52 = icmp ne %struct.plt_entry* %51, null
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = load %struct.plt_entry*, %struct.plt_entry** %16, align 8
  %55 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load %struct.plt_entry*, %struct.plt_entry** %16, align 8
  %63 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, -1
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %69 = load %struct.ppc_link_hash_entry**, %struct.ppc_link_hash_entry*** %8, align 8
  store %struct.ppc_link_hash_entry* %68, %struct.ppc_link_hash_entry** %69, align 8
  %70 = load i32, i32* @ppc_stub_plt_call, align 4
  store i32 %70, i32* %5, align 4
  br label %170

71:                                               ; preds = %61, %53
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.plt_entry*, %struct.plt_entry** %16, align 8
  %74 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %73, i32 0, i32 2
  %75 = load %struct.plt_entry*, %struct.plt_entry** %74, align 8
  store %struct.plt_entry* %75, %struct.plt_entry** %16, align 8
  br label %50

76:                                               ; preds = %50
  br label %77

77:                                               ; preds = %76, %38
  %78 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %79 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @bfd_link_hash_defined, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %77
  %86 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %87 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @bfd_link_hash_defweak, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %85, %77
  %94 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %15, align 8
  %95 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %133, label %104

104:                                              ; preds = %93, %85
  %105 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %106 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @bfd_link_hash_defined, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %104
  %113 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %114 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @bfd_link_hash_defweak, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %112, %104
  %121 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %10, align 8
  %122 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %120, %112
  %132 = load i32, i32* @ppc_stub_none, align 4
  store i32 %132, i32* %5, align 4
  br label %170

133:                                              ; preds = %120, %93
  br label %134

134:                                              ; preds = %133, %4
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %137, %142
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  store i64 %147, i64* %11, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load i64, i64* %11, align 8
  %150 = sub nsw i64 %148, %149
  store i64 %150, i64* %12, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @ELF64_R_TYPE(i32 %153)
  store i32 %154, i32* %14, align 4
  store i64 33554432, i64* %13, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* @R_PPC64_REL24, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %134
  store i64 32768, i64* %13, align 8
  br label %159

159:                                              ; preds = %158, %134
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* %13, align 8
  %162 = add nsw i64 %160, %161
  %163 = load i64, i64* %13, align 8
  %164 = mul nsw i64 2, %163
  %165 = icmp sge i64 %162, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* @ppc_stub_long_branch, align 4
  store i32 %167, i32* %5, align 4
  br label %170

168:                                              ; preds = %159
  %169 = load i32, i32* @ppc_stub_none, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %168, %166, %131, %67
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @ELF64_R_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
