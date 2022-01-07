; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_add_symbol_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_add_symbol_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_link_hash_entry = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.bfd_link_info = type { i32 }
%struct.ppc_link_hash_table = type { i32 }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppc_link_hash_entry*, %struct.bfd_link_info*)* @add_symbol_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_symbol_adjust(%struct.ppc_link_hash_entry* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppc_link_hash_entry*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.ppc_link_hash_table*, align 8
  %7 = alloca %struct.ppc_link_hash_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ppc_link_hash_entry* %0, %struct.ppc_link_hash_entry** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %10 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %11 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @bfd_link_hash_indirect, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %3, align 4
  br label %177

19:                                               ; preds = %2
  %20 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %21 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @bfd_link_hash_warning, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %29 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %35, %struct.ppc_link_hash_entry** %4, align 8
  br label %36

36:                                               ; preds = %27, %19
  %37 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %38 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 46
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = call i32 (...) @abort() #3
  unreachable

49:                                               ; preds = %36
  %50 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %51 = call %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info* %50)
  store %struct.ppc_link_hash_table* %51, %struct.ppc_link_hash_table** %6, align 8
  %52 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %53 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %54 = call %struct.ppc_link_hash_entry* @get_fdh(%struct.ppc_link_hash_entry* %52, %struct.ppc_link_hash_table* %53)
  store %struct.ppc_link_hash_entry* %54, %struct.ppc_link_hash_entry** %7, align 8
  %55 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %56 = icmp eq %struct.ppc_link_hash_entry* %55, null
  br i1 %56, label %57, label %97

57:                                               ; preds = %49
  %58 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %59 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %97, label %62

62:                                               ; preds = %57
  %63 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %64 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @bfd_link_hash_undefined, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %62
  %71 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %72 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %70, %62
  %79 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %80 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %86 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %87 = call %struct.ppc_link_hash_entry* @make_fdh(%struct.bfd_link_info* %85, %struct.ppc_link_hash_entry* %86)
  store %struct.ppc_link_hash_entry* %87, %struct.ppc_link_hash_entry** %7, align 8
  %88 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %89 = icmp eq %struct.ppc_link_hash_entry* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %3, align 4
  br label %177

92:                                               ; preds = %84
  %93 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %94 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %92
  br label %175

97:                                               ; preds = %78, %70, %57, %49
  %98 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %99 = icmp ne %struct.ppc_link_hash_entry* %98, null
  br i1 %99, label %100, label %174

100:                                              ; preds = %97
  %101 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %102 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ELF_ST_VISIBILITY(i32 %104)
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  %107 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %108 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ELF_ST_VISIBILITY(i32 %110)
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %100
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = sub i32 %117, %118
  %120 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %121 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add i32 %123, %119
  store i32 %124, i32* %122, align 4
  br label %139

125:                                              ; preds = %100
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %8, align 4
  %132 = sub i32 %130, %131
  %133 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %134 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = add i32 %136, %132
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %129, %125
  br label %139

139:                                              ; preds = %138, %116
  %140 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %141 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @bfd_link_hash_defined, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %155, label %147

147:                                              ; preds = %139
  %148 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %149 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @bfd_link_hash_defweak, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %147, %139
  %156 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %157 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @bfd_link_hash_undefined, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %155
  %164 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %165 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %166 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  store i64 %164, i64* %168, align 8
  %169 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %170 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  %171 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %172 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %171, i32 0, i32 0
  store i32 1, i32* %172, align 4
  br label %173

173:                                              ; preds = %163, %155, %147
  br label %174

174:                                              ; preds = %173, %97
  br label %175

175:                                              ; preds = %174, %96
  %176 = load i32, i32* @TRUE, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %90, %17
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info*) #2

declare dso_local %struct.ppc_link_hash_entry* @get_fdh(%struct.ppc_link_hash_entry*, %struct.ppc_link_hash_table*) #2

declare dso_local %struct.ppc_link_hash_entry* @make_fdh(%struct.bfd_link_info*, %struct.ppc_link_hash_entry*) #2

declare dso_local i32 @ELF_ST_VISIBILITY(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
