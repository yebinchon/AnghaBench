; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_lookup_address_in_line_info_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_lookup_address_in_line_info_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_info_table = type { %struct.line_info* }
%struct.line_info = type { i64, i8*, i32, %struct.line_info*, i32 }
%struct.funcinfo = type { %struct.arange }
%struct.arange = type { i64, %struct.arange* }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.line_info_table*, i64, %struct.funcinfo*, i8**, i32*)* @lookup_address_in_line_info_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lookup_address_in_line_info_table(%struct.line_info_table* %0, i64 %1, %struct.funcinfo* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.line_info_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.funcinfo*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.line_info*, align 8
  %13 = alloca %struct.line_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.arange*, align 8
  store %struct.line_info_table* %0, %struct.line_info_table** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.funcinfo* %2, %struct.funcinfo** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %18 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %17, i32 0, i32 0
  %19 = load %struct.line_info*, %struct.line_info** %18, align 8
  store %struct.line_info* %19, %struct.line_info** %12, align 8
  store %struct.line_info* null, %struct.line_info** %13, align 8
  %20 = load i8**, i8*** %10, align 8
  store i8* null, i8** %20, align 8
  %21 = load %struct.line_info*, %struct.line_info** %12, align 8
  %22 = icmp ne %struct.line_info* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %6, align 8
  br label %167

25:                                               ; preds = %5
  %26 = load %struct.line_info*, %struct.line_info** %12, align 8
  %27 = getelementptr inbounds %struct.line_info, %struct.line_info* %26, i32 0, i32 3
  %28 = load %struct.line_info*, %struct.line_info** %27, align 8
  store %struct.line_info* %28, %struct.line_info** %13, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.line_info*, %struct.line_info** %12, align 8
  %31 = getelementptr inbounds %struct.line_info, %struct.line_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store %struct.line_info* null, %struct.line_info** %13, align 8
  br label %35

35:                                               ; preds = %34, %25
  br label %36

36:                                               ; preds = %143, %35
  %37 = load %struct.line_info*, %struct.line_info** %13, align 8
  %38 = icmp ne %struct.line_info* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.line_info*, %struct.line_info** %12, align 8
  %41 = icmp ne %struct.line_info* %40, null
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i1 [ false, %36 ], [ %41, %39 ]
  br i1 %43, label %44, label %148

44:                                               ; preds = %42
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %14, align 8
  %46 = load %struct.line_info*, %struct.line_info** %13, align 8
  %47 = getelementptr inbounds %struct.line_info, %struct.line_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %133

51:                                               ; preds = %44
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.line_info*, %struct.line_info** %12, align 8
  %54 = getelementptr inbounds %struct.line_info, %struct.line_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %133

57:                                               ; preds = %51
  %58 = load i64, i64* @TRUE, align 8
  store i64 %58, i64* %14, align 8
  %59 = load %struct.funcinfo*, %struct.funcinfo** %9, align 8
  %60 = icmp ne %struct.funcinfo* %59, null
  br i1 %60, label %61, label %123

61:                                               ; preds = %57
  %62 = load %struct.funcinfo*, %struct.funcinfo** %9, align 8
  %63 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.arange, %struct.arange* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %15, align 8
  %66 = load %struct.funcinfo*, %struct.funcinfo** %9, align 8
  %67 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %66, i32 0, i32 0
  store %struct.arange* %67, %struct.arange** %16, align 8
  br label %68

68:                                               ; preds = %84, %61
  %69 = load %struct.arange*, %struct.arange** %16, align 8
  %70 = icmp ne %struct.arange* %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load %struct.funcinfo*, %struct.funcinfo** %9, align 8
  %73 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.arange, %struct.arange* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %15, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.funcinfo*, %struct.funcinfo** %9, align 8
  %80 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.arange, %struct.arange* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %15, align 8
  br label %83

83:                                               ; preds = %78, %71
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.arange*, %struct.arange** %16, align 8
  %86 = getelementptr inbounds %struct.arange, %struct.arange* %85, i32 0, i32 1
  %87 = load %struct.arange*, %struct.arange** %86, align 8
  store %struct.arange* %87, %struct.arange** %16, align 8
  br label %68

88:                                               ; preds = %68
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %15, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %88
  %93 = load %struct.line_info*, %struct.line_info** %13, align 8
  %94 = getelementptr inbounds %struct.line_info, %struct.line_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %15, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = load %struct.line_info*, %struct.line_info** %12, align 8
  %100 = getelementptr inbounds %struct.line_info, %struct.line_info* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %15, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load %struct.line_info*, %struct.line_info** %12, align 8
  %106 = getelementptr inbounds %struct.line_info, %struct.line_info* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load i8**, i8*** %10, align 8
  store i8* %107, i8** %108, align 8
  %109 = load %struct.line_info*, %struct.line_info** %12, align 8
  %110 = getelementptr inbounds %struct.line_info, %struct.line_info* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %11, align 8
  store i32 %111, i32* %112, align 4
  br label %122

113:                                              ; preds = %98, %92, %88
  %114 = load %struct.line_info*, %struct.line_info** %13, align 8
  %115 = getelementptr inbounds %struct.line_info, %struct.line_info* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load i8**, i8*** %10, align 8
  store i8* %116, i8** %117, align 8
  %118 = load %struct.line_info*, %struct.line_info** %13, align 8
  %119 = getelementptr inbounds %struct.line_info, %struct.line_info* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32*, i32** %11, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %113, %104
  br label %132

123:                                              ; preds = %57
  %124 = load %struct.line_info*, %struct.line_info** %13, align 8
  %125 = getelementptr inbounds %struct.line_info, %struct.line_info* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = load i8**, i8*** %10, align 8
  store i8* %126, i8** %127, align 8
  %128 = load %struct.line_info*, %struct.line_info** %13, align 8
  %129 = getelementptr inbounds %struct.line_info, %struct.line_info* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32*, i32** %11, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %123, %122
  br label %133

133:                                              ; preds = %132, %51, %44
  %134 = load i64, i64* %14, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load %struct.line_info*, %struct.line_info** %13, align 8
  %138 = getelementptr inbounds %struct.line_info, %struct.line_info* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %136
  %142 = load i64, i64* @TRUE, align 8
  store i64 %142, i64* %6, align 8
  br label %167

143:                                              ; preds = %136, %133
  %144 = load %struct.line_info*, %struct.line_info** %13, align 8
  store %struct.line_info* %144, %struct.line_info** %12, align 8
  %145 = load %struct.line_info*, %struct.line_info** %13, align 8
  %146 = getelementptr inbounds %struct.line_info, %struct.line_info* %145, i32 0, i32 3
  %147 = load %struct.line_info*, %struct.line_info** %146, align 8
  store %struct.line_info* %147, %struct.line_info** %13, align 8
  br label %36

148:                                              ; preds = %42
  %149 = load i8**, i8*** %10, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = icmp eq i8* %150, null
  br i1 %151, label %152, label %165

152:                                              ; preds = %148
  %153 = load %struct.funcinfo*, %struct.funcinfo** %9, align 8
  %154 = icmp ne %struct.funcinfo* %153, null
  br i1 %154, label %155, label %165

155:                                              ; preds = %152
  %156 = load %struct.line_info*, %struct.line_info** %12, align 8
  %157 = getelementptr inbounds %struct.line_info, %struct.line_info* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = load i8**, i8*** %10, align 8
  store i8* %158, i8** %159, align 8
  %160 = load %struct.line_info*, %struct.line_info** %12, align 8
  %161 = getelementptr inbounds %struct.line_info, %struct.line_info* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32*, i32** %11, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i64, i64* @TRUE, align 8
  store i64 %164, i64* %6, align 8
  br label %167

165:                                              ; preds = %152, %148
  %166 = load i64, i64* @FALSE, align 8
  store i64 %166, i64* %6, align 8
  br label %167

167:                                              ; preds = %165, %155, %141, %23
  %168 = load i64, i64* %6, align 8
  ret i64 %168
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
