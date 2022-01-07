; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_renumber_gnu_hash_syms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_renumber_gnu_hash_syms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.collect_gnu_hash_codes = type { i32, i64*, i64, i32, i32, i32*, i32, i32, i32*, i32*, i32, i64, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.elf_link_hash_entry*)* }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @elf_renumber_gnu_hash_syms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_renumber_gnu_hash_syms(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.collect_gnu_hash_codes*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.collect_gnu_hash_codes*
  store %struct.collect_gnu_hash_codes* %10, %struct.collect_gnu_hash_codes** %6, align 8
  %11 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %12 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @bfd_link_hash_warning, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %19 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %24, %struct.elf_link_hash_entry** %4, align 8
  br label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %27 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %3, align 4
  br label %206

32:                                               ; preds = %25
  %33 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %34 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %33, i32 0, i32 14
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32 (%struct.elf_link_hash_entry*)*, i32 (%struct.elf_link_hash_entry*)** %36, align 8
  %38 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %39 = call i32 %37(%struct.elf_link_hash_entry* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %32
  %42 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %43 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %46 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %51 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %50, i32 0, i32 13
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %55 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  br label %56

56:                                               ; preds = %49, %41
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %3, align 4
  br label %206

58:                                               ; preds = %32
  %59 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %60 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %63 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %61, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %69 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = urem i64 %67, %70
  store i64 %71, i64* %7, align 8
  %72 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %73 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %76 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %74, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %82 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = zext i32 %83 to i64
  %85 = lshr i64 %80, %84
  %86 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %87 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %90 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = ashr i32 %88, %91
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = and i64 %85, %94
  store i64 %95, i64* %8, align 8
  %96 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %97 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %100 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %98, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %106 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = and i64 %104, %108
  %110 = trunc i64 %109 to i32
  %111 = shl i32 1, %110
  %112 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %113 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %111
  store i32 %118, i32* %116, align 4
  %119 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %120 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %123 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %121, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %129 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = zext i32 %130 to i64
  %132 = lshr i64 %127, %131
  %133 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %134 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = and i64 %132, %136
  %138 = trunc i64 %137 to i32
  %139 = shl i32 1, %138
  %140 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %141 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %140, i32 0, i32 5
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %8, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %139
  store i32 %146, i32* %144, align 4
  %147 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %148 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %151 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %149, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = and i64 %155, -2
  store i64 %156, i64* %8, align 8
  %157 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %158 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %157, i32 0, i32 8
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* %7, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %167

164:                                              ; preds = %58
  %165 = load i64, i64* %8, align 8
  %166 = or i64 %165, 1
  store i64 %166, i64* %8, align 8
  br label %167

167:                                              ; preds = %164, %58
  %168 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %169 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %168, i32 0, i32 12
  %170 = load i32, i32* %169, align 8
  %171 = load i64, i64* %8, align 8
  %172 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %173 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %172, i32 0, i32 11
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %176 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %175, i32 0, i32 9
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* %7, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %182 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %181, i32 0, i32 10
  %183 = load i32, i32* %182, align 8
  %184 = sub nsw i32 %180, %183
  %185 = mul nsw i32 %184, 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %174, %186
  %188 = call i32 @bfd_put_32(i32 %170, i64 %171, i64 %187)
  %189 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %190 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %189, i32 0, i32 8
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* %7, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %193, align 4
  %196 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %197 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %196, i32 0, i32 9
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* %7, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 4
  %203 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %204 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 8
  %205 = load i32, i32* @TRUE, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %167, %56, %30
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @bfd_put_32(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
