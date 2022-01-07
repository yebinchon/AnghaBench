; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2.c_extract_cie_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2.c_extract_cie_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf_cie = type { i8*, i32 }
%struct._Unwind_Context = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@DW_EH_PE_omit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dwarf_cie*, %struct._Unwind_Context*, %struct.TYPE_3__*)* @extract_cie_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @extract_cie_info(%struct.dwarf_cie* %0, %struct._Unwind_Context* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dwarf_cie*, align 8
  %6 = alloca %struct._Unwind_Context*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.dwarf_cie* %0, %struct.dwarf_cie** %5, align 8
  store %struct._Unwind_Context* %1, %struct._Unwind_Context** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %13 = load %struct.dwarf_cie*, %struct.dwarf_cie** %5, align 8
  %14 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %21, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 101
  br i1 %26, label %27, label %42

27:                                               ; preds = %3
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 104
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @read_pointer(i8* %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 8
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %41, i8** %8, align 8
  br label %42

42:                                               ; preds = %33, %27, %3
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i8* @read_uleb128(i8* %43, i32* %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 7
  %50 = call i8* @read_sleb128(i8* %47, i32* %49)
  store i8* %50, i8** %9, align 8
  %51 = load %struct.dwarf_cie*, %struct.dwarf_cie** %5, align 8
  %52 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %62

55:                                               ; preds = %42
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  %58 = load i8, i8* %56, align 1
  %59 = zext i8 %58 to i32
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %67

62:                                               ; preds = %42
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = call i8* @read_uleb128(i8* %63, i32* %65)
  store i8* %66, i8** %9, align 8
  br label %67

67:                                               ; preds = %62, %55
  %68 = load i32, i32* @DW_EH_PE_omit, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 122
  br i1 %74, label %75, label %86

75:                                               ; preds = %67
  %76 = load i8*, i8** %9, align 8
  %77 = call i8* @read_uleb128(i8* %76, i32* %11)
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8* %81, i8** %10, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %8, align 8
  br label %86

86:                                               ; preds = %75, %67
  br label %87

87:                                               ; preds = %156, %86
  %88 = load i8*, i8** %8, align 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %157

92:                                               ; preds = %87
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 76
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %9, align 8
  %101 = load i8, i8* %99, align 1
  %102 = zext i8 %101 to i32
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8* %106, i8** %8, align 8
  br label %156

107:                                              ; preds = %92
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 82
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %9, align 8
  %116 = load i8, i8* %114, align 1
  %117 = zext i8 %116 to i32
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  store i8* %121, i8** %8, align 8
  br label %155

122:                                              ; preds = %107
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 80
  br i1 %127, label %128, label %140

128:                                              ; preds = %122
  %129 = load %struct._Unwind_Context*, %struct._Unwind_Context** %6, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = load i8, i8* %130, align 1
  %132 = load i8*, i8** %9, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = call i8* @read_encoded_value(%struct._Unwind_Context* %129, i8 zeroext %131, i8* %133, i64* %12)
  store i8* %134, i8** %9, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 4
  store i64 %135, i64* %137, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  store i8* %139, i8** %8, align 8
  br label %154

140:                                              ; preds = %122
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 83
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 3
  store i32 1, i32* %148, align 4
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  store i8* %150, i8** %8, align 8
  br label %153

151:                                              ; preds = %140
  %152 = load i8*, i8** %10, align 8
  store i8* %152, i8** %4, align 8
  br label %166

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153, %128
  br label %155

155:                                              ; preds = %154, %113
  br label %156

156:                                              ; preds = %155, %98
  br label %87

157:                                              ; preds = %87
  %158 = load i8*, i8** %10, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i8*, i8** %10, align 8
  br label %164

162:                                              ; preds = %157
  %163 = load i8*, i8** %9, align 8
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i8* [ %161, %160 ], [ %163, %162 ]
  store i8* %165, i8** %4, align 8
  br label %166

166:                                              ; preds = %164, %151
  %167 = load i8*, i8** %4, align 8
  ret i8* %167
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @read_pointer(i8*) #1

declare dso_local i8* @read_uleb128(i8*, i32*) #1

declare dso_local i8* @read_sleb128(i8*, i32*) #1

declare dso_local i8* @read_encoded_value(%struct._Unwind_Context*, i8 zeroext, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
