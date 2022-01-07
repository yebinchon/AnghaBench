; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_itbl_assemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_itbl_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itbl_entry = type { i32, i64, %struct.itbl_field* }
%struct.itbl_field = type { i32, i32, %struct.itbl_field* }

@e_nprocs = common dso_local global i32 0, align 4
@e_insn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @itbl_assemble(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.itbl_entry*, align 8
  %8 = alloca %struct.itbl_field*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.itbl_entry*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.itbl_entry* null, %struct.itbl_entry** %7, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %2
  store i64 0, i64* %3, align 8
  br label %153

20:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %34, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @e_nprocs, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @e_insn, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call %struct.itbl_entry* @find_entry_byname(i32 %26, i32 %27, i8* %28)
  store %struct.itbl_entry* %29, %struct.itbl_entry** %7, align 8
  %30 = load %struct.itbl_entry*, %struct.itbl_entry** %7, align 8
  %31 = icmp ne %struct.itbl_entry* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %37

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %21

37:                                               ; preds = %32, %21
  %38 = load %struct.itbl_entry*, %struct.itbl_entry** %7, align 8
  %39 = icmp ne %struct.itbl_entry* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i64 0, i64* %3, align 8
  br label %153

41:                                               ; preds = %37
  %42 = load %struct.itbl_entry*, %struct.itbl_entry** %7, align 8
  %43 = call i64 @build_opcode(%struct.itbl_entry* %42)
  store i64 %43, i64* %6, align 8
  %44 = load %struct.itbl_entry*, %struct.itbl_entry** %7, align 8
  %45 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %44, i32 0, i32 2
  %46 = load %struct.itbl_field*, %struct.itbl_field** %45, align 8
  store %struct.itbl_field* %46, %struct.itbl_field** %8, align 8
  br label %47

47:                                               ; preds = %138, %41
  %48 = load %struct.itbl_field*, %struct.itbl_field** %8, align 8
  %49 = icmp ne %struct.itbl_field* %48, null
  br i1 %49, label %50, label %142

50:                                               ; preds = %47
  %51 = load i8*, i8** %5, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i8*, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53, %50
  store i64 0, i64* %3, align 8
  br label %153

58:                                               ; preds = %53
  %59 = call i8* @itbl_get_field(i8** %5)
  store i8* %59, i8** %9, align 8
  %60 = load %struct.itbl_field*, %struct.itbl_field** %8, align 8
  %61 = getelementptr inbounds %struct.itbl_field, %struct.itbl_field* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %129 [
    i32 130, label %63
    i32 131, label %63
    i32 129, label %63
    i32 132, label %100
    i32 128, label %100
  ]

63:                                               ; preds = %58, %58, %58
  %64 = load i8*, i8** %9, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 36
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = call i64 @strtol(i8* %71, i32 0, i32 10)
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i8*, i8** %9, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 48
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i64 0, i64* %3, align 8
  br label %153

81:                                               ; preds = %75, %68
  br label %99

82:                                               ; preds = %63
  %83 = load %struct.itbl_entry*, %struct.itbl_entry** %7, align 8
  %84 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.itbl_field*, %struct.itbl_field** %8, align 8
  %87 = getelementptr inbounds %struct.itbl_field, %struct.itbl_field* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call %struct.itbl_entry* @find_entry_byname(i32 %85, i32 %88, i8* %89)
  store %struct.itbl_entry* %90, %struct.itbl_entry** %11, align 8
  %91 = load %struct.itbl_entry*, %struct.itbl_entry** %11, align 8
  %92 = icmp ne %struct.itbl_entry* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = load %struct.itbl_entry*, %struct.itbl_entry** %11, align 8
  %95 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %12, align 8
  br label %98

97:                                               ; preds = %82
  store i64 0, i64* %3, align 8
  br label %153

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %81
  br label %130

100:                                              ; preds = %58, %58
  %101 = load i8*, i8** %9, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 48
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 120
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  store i8* %113, i8** %9, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = call i64 @strtol(i8* %114, i32 0, i32 16)
  store i64 %115, i64* %12, align 8
  br label %128

116:                                              ; preds = %105, %100
  %117 = load i8*, i8** %9, align 8
  %118 = call i64 @strtol(i8* %117, i32 0, i32 10)
  store i64 %118, i64* %12, align 8
  %119 = load i64, i64* %12, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load i8*, i8** %9, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 48
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i64 0, i64* %3, align 8
  br label %153

127:                                              ; preds = %121, %116
  br label %128

128:                                              ; preds = %127, %111
  br label %130

129:                                              ; preds = %58
  store i64 0, i64* %3, align 8
  br label %153

130:                                              ; preds = %128, %99
  %131 = load i64, i64* %12, align 8
  %132 = load %struct.itbl_field*, %struct.itbl_field** %8, align 8
  %133 = getelementptr inbounds %struct.itbl_field, %struct.itbl_field* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @apply_range(i64 %131, i32 %134)
  %136 = load i64, i64* %6, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %6, align 8
  br label %138

138:                                              ; preds = %130
  %139 = load %struct.itbl_field*, %struct.itbl_field** %8, align 8
  %140 = getelementptr inbounds %struct.itbl_field, %struct.itbl_field* %139, i32 0, i32 2
  %141 = load %struct.itbl_field*, %struct.itbl_field** %140, align 8
  store %struct.itbl_field* %141, %struct.itbl_field** %8, align 8
  br label %47

142:                                              ; preds = %47
  %143 = load i8*, i8** %5, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i8*, i8** %5, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store i64 0, i64* %3, align 8
  br label %153

151:                                              ; preds = %145, %142
  %152 = load i64, i64* %6, align 8
  store i64 %152, i64* %3, align 8
  br label %153

153:                                              ; preds = %151, %150, %129, %126, %97, %80, %57, %40, %19
  %154 = load i64, i64* %3, align 8
  ret i64 %154
}

declare dso_local %struct.itbl_entry* @find_entry_byname(i32, i32, i8*) #1

declare dso_local i64 @build_opcode(%struct.itbl_entry*) #1

declare dso_local i8* @itbl_get_field(i8**) #1

declare dso_local i64 @strtol(i8*, i32, i32) #1

declare dso_local i64 @apply_range(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
