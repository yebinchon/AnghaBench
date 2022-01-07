; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_unicode.c_hfsplus_compare_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_unicode.c_hfsplus_compare_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qstr = type { i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@HFSPLUS_SB_CASEFOLD = common dso_local global i32 0, align 4
@HFSPLUS_SB_NODECOMPOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_compare_dentry(%struct.dentry* %0, %struct.qstr* %1, %struct.qstr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_2__, align 4
  %24 = alloca %struct.TYPE_2__, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = load %struct.super_block*, %struct.super_block** %26, align 8
  store %struct.super_block* %27, %struct.super_block** %8, align 8
  %28 = load %struct.super_block*, %struct.super_block** %8, align 8
  %29 = call i32 @HFSPLUS_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HFSPLUS_SB_CASEFOLD, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.super_block*, %struct.super_block** %8, align 8
  %36 = call i32 @HFSPLUS_SB(%struct.super_block* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HFSPLUS_SB_NODECOMPOSE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load %struct.qstr*, %struct.qstr** %6, align 8
  %46 = getelementptr inbounds %struct.qstr, %struct.qstr* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %18, align 8
  %48 = load %struct.qstr*, %struct.qstr** %6, align 8
  %49 = getelementptr inbounds %struct.qstr, %struct.qstr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %14, align 4
  %51 = load %struct.qstr*, %struct.qstr** %7, align 8
  %52 = getelementptr inbounds %struct.qstr, %struct.qstr* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %19, align 8
  %54 = load %struct.qstr*, %struct.qstr** %7, align 8
  %55 = getelementptr inbounds %struct.qstr, %struct.qstr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %15, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i64* null, i64** %17, align 8
  store i64* null, i64** %16, align 8
  br label %57

57:                                               ; preds = %150, %133, %124, %3
  %58 = load i32, i32* %14, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %15, align 4
  %62 = icmp sgt i32 %61, 0
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i1 [ false, %57 ], [ %62, %60 ]
  br i1 %64, label %65, label %159

65:                                               ; preds = %63
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %89, label %68

68:                                               ; preds = %65
  %69 = load %struct.super_block*, %struct.super_block** %8, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @asc2unichar(%struct.super_block* %69, i8* %70, i32 %71, i64* %22)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i8*, i8** %18, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %18, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %68
  %83 = load i64, i64* %22, align 8
  %84 = call i64* @decompose_unichar(i64 %83, i32* %12)
  store i64* %84, i64** %16, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82, %68
  %87 = load i64, i64* %22, align 8
  store i64 %87, i64* %20, align 8
  store i64* %20, i64** %16, align 8
  store i32 1, i32* %12, align 4
  br label %88

88:                                               ; preds = %86, %82
  br label %89

89:                                               ; preds = %88, %65
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %113, label %92

92:                                               ; preds = %89
  %93 = load %struct.super_block*, %struct.super_block** %8, align 8
  %94 = load i8*, i8** %19, align 8
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @asc2unichar(%struct.super_block* %93, i8* %94, i32 %95, i64* %22)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i8*, i8** %19, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %19, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %15, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %92
  %107 = load i64, i64* %22, align 8
  %108 = call i64* @decompose_unichar(i64 %107, i32* %13)
  store i64* %108, i64** %17, align 8
  %109 = icmp ne i64* %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %106, %92
  %111 = load i64, i64* %22, align 8
  store i64 %111, i64* %21, align 8
  store i64* %21, i64** %17, align 8
  store i32 1, i32* %13, align 4
  br label %112

112:                                              ; preds = %110, %106
  br label %113

113:                                              ; preds = %112, %89
  %114 = load i64*, i64** %16, align 8
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %20, align 8
  %116 = load i64*, i64** %17, align 8
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %21, align 8
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %113
  %121 = load i64, i64* %20, align 8
  %122 = call i64 @case_fold(i64 %121)
  store i64 %122, i64* %20, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  %125 = load i64*, i64** %16, align 8
  %126 = getelementptr inbounds i64, i64* %125, i32 1
  store i64* %126, i64** %16, align 8
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %12, align 4
  br label %57

129:                                              ; preds = %120
  %130 = load i64, i64* %21, align 8
  %131 = call i64 @case_fold(i64 %130)
  store i64 %131, i64* %21, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %129
  %134 = load i64*, i64** %17, align 8
  %135 = getelementptr inbounds i64, i64* %134, i32 1
  store i64* %135, i64** %17, align 8
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %13, align 4
  br label %57

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138, %113
  %140 = load i64, i64* %20, align 8
  %141 = load i64, i64* %21, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 -1, i32* %4, align 4
  br label %170

144:                                              ; preds = %139
  %145 = load i64, i64* %20, align 8
  %146 = load i64, i64* %21, align 8
  %147 = icmp sgt i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 1, i32* %4, align 4
  br label %170

149:                                              ; preds = %144
  br label %150

150:                                              ; preds = %149
  %151 = load i64*, i64** %16, align 8
  %152 = getelementptr inbounds i64, i64* %151, i32 1
  store i64* %152, i64** %16, align 8
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %12, align 4
  %155 = load i64*, i64** %17, align 8
  %156 = getelementptr inbounds i64, i64* %155, i32 1
  store i64* %156, i64** %17, align 8
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %13, align 4
  br label %57

159:                                              ; preds = %63
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32 -1, i32* %4, align 4
  br label %170

164:                                              ; preds = %159
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store i32 1, i32* %4, align 4
  br label %170

169:                                              ; preds = %164
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %169, %168, %163, %148, %143
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @asc2unichar(%struct.super_block*, i8*, i32, i64*) #1

declare dso_local i64* @decompose_unichar(i64, i32*) #1

declare dso_local i64 @case_fold(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
