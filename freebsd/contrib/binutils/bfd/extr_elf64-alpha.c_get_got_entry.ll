; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_get_got_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_get_got_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpha_elf_got_entry = type { i64, i64, i32, i32, i32, %struct.alpha_elf_got_entry*, i64, i64, i32* }
%struct.alpha_elf_link_hash_entry = type { %struct.alpha_elf_got_entry* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.alpha_elf_got_entry** }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.alpha_elf_got_entry* (i32*, %struct.alpha_elf_link_hash_entry*, i64, i64, i64)* @get_got_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.alpha_elf_got_entry* @get_got_entry(i32* %0, %struct.alpha_elf_link_hash_entry* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.alpha_elf_got_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.alpha_elf_link_hash_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.alpha_elf_got_entry*, align 8
  %13 = alloca %struct.alpha_elf_got_entry**, align 8
  %14 = alloca %struct.alpha_elf_got_entry**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.alpha_elf_link_hash_entry* %1, %struct.alpha_elf_link_hash_entry** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %8, align 8
  %20 = icmp ne %struct.alpha_elf_link_hash_entry* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %8, align 8
  %23 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %22, i32 0, i32 0
  store %struct.alpha_elf_got_entry** %23, %struct.alpha_elf_got_entry*** %13, align 8
  br label %58

24:                                               ; preds = %5
  %25 = load i32*, i32** %7, align 8
  %26 = call %struct.TYPE_6__* @alpha_elf_tdata(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %27, align 8
  store %struct.alpha_elf_got_entry** %28, %struct.alpha_elf_got_entry*** %14, align 8
  %29 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %14, align 8
  %30 = icmp ne %struct.alpha_elf_got_entry** %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %24
  %32 = load i32*, i32** %7, align 8
  %33 = call %struct.TYPE_5__* @elf_tdata(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %16, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %15, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i64 @bfd_zalloc(i32* %42, i32 %43)
  %45 = inttoptr i64 %44 to %struct.alpha_elf_got_entry**
  store %struct.alpha_elf_got_entry** %45, %struct.alpha_elf_got_entry*** %14, align 8
  %46 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %14, align 8
  %47 = icmp ne %struct.alpha_elf_got_entry** %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %31
  store %struct.alpha_elf_got_entry* null, %struct.alpha_elf_got_entry** %6, align 8
  br label %150

49:                                               ; preds = %31
  %50 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %14, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call %struct.TYPE_6__* @alpha_elf_tdata(i32* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store %struct.alpha_elf_got_entry** %50, %struct.alpha_elf_got_entry*** %53, align 8
  br label %54

54:                                               ; preds = %49, %24
  %55 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %14, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %55, i64 %56
  store %struct.alpha_elf_got_entry** %57, %struct.alpha_elf_got_entry*** %13, align 8
  br label %58

58:                                               ; preds = %54, %21
  %59 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %13, align 8
  %60 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %59, align 8
  store %struct.alpha_elf_got_entry* %60, %struct.alpha_elf_got_entry** %12, align 8
  br label %61

61:                                               ; preds = %84, %58
  %62 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %63 = icmp ne %struct.alpha_elf_got_entry* %62, null
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %66 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %65, i32 0, i32 8
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = icmp eq i32* %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %72 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %78 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %88

83:                                               ; preds = %76, %70, %64
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %86 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %85, i32 0, i32 5
  %87 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %86, align 8
  store %struct.alpha_elf_got_entry* %87, %struct.alpha_elf_got_entry** %12, align 8
  br label %61

88:                                               ; preds = %82, %61
  %89 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %90 = icmp ne %struct.alpha_elf_got_entry* %89, null
  br i1 %90, label %143, label %91

91:                                               ; preds = %88
  store i32 64, i32* %18, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %18, align 4
  %94 = call i64 @bfd_alloc(i32* %92, i32 %93)
  %95 = inttoptr i64 %94 to %struct.alpha_elf_got_entry*
  store %struct.alpha_elf_got_entry* %95, %struct.alpha_elf_got_entry** %12, align 8
  %96 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %97 = icmp ne %struct.alpha_elf_got_entry* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  store %struct.alpha_elf_got_entry* null, %struct.alpha_elf_got_entry** %6, align 8
  br label %150

99:                                               ; preds = %91
  %100 = load i32*, i32** %7, align 8
  %101 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %102 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %101, i32 0, i32 8
  store i32* %100, i32** %102, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %105 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %107 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %106, i32 0, i32 2
  store i32 -1, i32* %107, align 8
  %108 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %109 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %108, i32 0, i32 3
  store i32 -1, i32* %109, align 4
  %110 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %111 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %110, i32 0, i32 4
  store i32 1, i32* %111, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %114 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %116 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %115, i32 0, i32 7
  store i64 0, i64* %116, align 8
  %117 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %118 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %117, i32 0, i32 6
  store i64 0, i64* %118, align 8
  %119 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %13, align 8
  %120 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %119, align 8
  %121 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %122 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %121, i32 0, i32 5
  store %struct.alpha_elf_got_entry* %120, %struct.alpha_elf_got_entry** %122, align 8
  %123 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %124 = load %struct.alpha_elf_got_entry**, %struct.alpha_elf_got_entry*** %13, align 8
  store %struct.alpha_elf_got_entry* %123, %struct.alpha_elf_got_entry** %124, align 8
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @alpha_got_entry_size(i64 %125)
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = call %struct.TYPE_6__* @alpha_elf_tdata(i32* %128)
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, %127
  store i32 %132, i32* %130, align 8
  %133 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %8, align 8
  %134 = icmp ne %struct.alpha_elf_link_hash_entry* %133, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %99
  %136 = load i32, i32* %17, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = call %struct.TYPE_6__* @alpha_elf_tdata(i32* %137)
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, %136
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %135, %99
  br label %148

143:                                              ; preds = %88
  %144 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  %145 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %143, %142
  %149 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %12, align 8
  store %struct.alpha_elf_got_entry* %149, %struct.alpha_elf_got_entry** %6, align 8
  br label %150

150:                                              ; preds = %148, %98, %48
  %151 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %6, align 8
  ret %struct.alpha_elf_got_entry* %151
}

declare dso_local %struct.TYPE_6__* @alpha_elf_tdata(i32*) #1

declare dso_local %struct.TYPE_5__* @elf_tdata(i32*) #1

declare dso_local i64 @bfd_zalloc(i32*, i32) #1

declare dso_local i64 @bfd_alloc(i32*, i32) #1

declare dso_local i32 @alpha_got_entry_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
