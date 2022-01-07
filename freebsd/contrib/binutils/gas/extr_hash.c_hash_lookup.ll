; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_hash.c_hash_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_hash.c_hash_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_entry = type { i64, i8*, %struct.hash_entry* }
%struct.hash_control = type { i64, i32, i32, %struct.hash_entry**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hash_entry* (%struct.hash_control*, i8*, i64, %struct.hash_entry***, i64*)* @hash_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hash_entry* @hash_lookup(%struct.hash_control* %0, i8* %1, i64 %2, %struct.hash_entry*** %3, i64* %4) #0 {
  %6 = alloca %struct.hash_entry*, align 8
  %7 = alloca %struct.hash_control*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hash_entry***, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hash_entry**, align 8
  %17 = alloca %struct.hash_entry*, align 8
  %18 = alloca %struct.hash_entry*, align 8
  store %struct.hash_control* %0, %struct.hash_control** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.hash_entry*** %3, %struct.hash_entry**** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %19

19:                                               ; preds = %40, %5
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %13, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = shl i32 %30, 17
  %32 = add i32 %29, %31
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* %12, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = lshr i64 %36, 2
  %38 = load i64, i64* %12, align 8
  %39 = xor i64 %38, %37
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %23
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %13, align 8
  br label %19

43:                                               ; preds = %19
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = shl i64 %45, 17
  %47 = add i64 %44, %46
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = lshr i64 %50, 2
  %52 = load i64, i64* %12, align 8
  %53 = xor i64 %52, %51
  store i64 %53, i64* %12, align 8
  %54 = load i64*, i64** %11, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = load i64, i64* %12, align 8
  %58 = load i64*, i64** %11, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %43
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.hash_control*, %struct.hash_control** %7, align 8
  %62 = getelementptr inbounds %struct.hash_control, %struct.hash_control* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = urem i64 %60, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %15, align 4
  %66 = load %struct.hash_control*, %struct.hash_control** %7, align 8
  %67 = getelementptr inbounds %struct.hash_control, %struct.hash_control* %66, i32 0, i32 3
  %68 = load %struct.hash_entry**, %struct.hash_entry*** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.hash_entry*, %struct.hash_entry** %68, i64 %70
  store %struct.hash_entry** %71, %struct.hash_entry*** %16, align 8
  %72 = load %struct.hash_entry***, %struct.hash_entry**** %10, align 8
  %73 = icmp ne %struct.hash_entry*** %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %59
  %75 = load %struct.hash_entry**, %struct.hash_entry*** %16, align 8
  %76 = load %struct.hash_entry***, %struct.hash_entry**** %10, align 8
  store %struct.hash_entry** %75, %struct.hash_entry*** %76, align 8
  br label %77

77:                                               ; preds = %74, %59
  store %struct.hash_entry* null, %struct.hash_entry** %18, align 8
  %78 = load %struct.hash_entry**, %struct.hash_entry*** %16, align 8
  %79 = load %struct.hash_entry*, %struct.hash_entry** %78, align 8
  store %struct.hash_entry* %79, %struct.hash_entry** %17, align 8
  br label %80

80:                                               ; preds = %126, %77
  %81 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %82 = icmp ne %struct.hash_entry* %81, null
  br i1 %82, label %83, label %130

83:                                               ; preds = %80
  %84 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %85 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %12, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %124

89:                                               ; preds = %83
  %90 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %91 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i64 @strncmp(i8* %92, i8* %93, i64 %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %89
  %98 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %99 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %97
  %107 = load %struct.hash_entry*, %struct.hash_entry** %18, align 8
  %108 = icmp ne %struct.hash_entry* %107, null
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %111 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %110, i32 0, i32 2
  %112 = load %struct.hash_entry*, %struct.hash_entry** %111, align 8
  %113 = load %struct.hash_entry*, %struct.hash_entry** %18, align 8
  %114 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %113, i32 0, i32 2
  store %struct.hash_entry* %112, %struct.hash_entry** %114, align 8
  %115 = load %struct.hash_entry**, %struct.hash_entry*** %16, align 8
  %116 = load %struct.hash_entry*, %struct.hash_entry** %115, align 8
  %117 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %118 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %117, i32 0, i32 2
  store %struct.hash_entry* %116, %struct.hash_entry** %118, align 8
  %119 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %120 = load %struct.hash_entry**, %struct.hash_entry*** %16, align 8
  store %struct.hash_entry* %119, %struct.hash_entry** %120, align 8
  br label %121

121:                                              ; preds = %109, %106
  %122 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  store %struct.hash_entry* %122, %struct.hash_entry** %6, align 8
  br label %131

123:                                              ; preds = %97, %89
  br label %124

124:                                              ; preds = %123, %83
  %125 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  store %struct.hash_entry* %125, %struct.hash_entry** %18, align 8
  br label %126

126:                                              ; preds = %124
  %127 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %128 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %127, i32 0, i32 2
  %129 = load %struct.hash_entry*, %struct.hash_entry** %128, align 8
  store %struct.hash_entry* %129, %struct.hash_entry** %17, align 8
  br label %80

130:                                              ; preds = %80
  store %struct.hash_entry* null, %struct.hash_entry** %6, align 8
  br label %131

131:                                              ; preds = %130, %121
  %132 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  ret %struct.hash_entry* %132
}

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
