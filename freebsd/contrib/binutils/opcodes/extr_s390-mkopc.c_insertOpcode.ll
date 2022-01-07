; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_s390-mkopc.c_insertOpcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_s390-mkopc.c_insertOpcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32 }

@no_ops = common dso_local global i32 0, align 4
@max_ops = common dso_local global i32 0, align 4
@op_array = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32, i32)* @insertOpcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insertOpcode(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  br label %16

16:                                               ; preds = %20, %5
  %17 = load i32, i32* @no_ops, align 4
  %18 = load i32, i32* @max_ops, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i32, i32* @max_ops, align 4
  %22 = mul nsw i32 %21, 2
  store i32 %22, i32* @max_ops, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @op_array, align 8
  %24 = load i32, i32* @max_ops, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call %struct.TYPE_4__* @realloc(%struct.TYPE_4__* %23, i32 %27)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** @op_array, align 8
  br label %16

29:                                               ; preds = %16
  store i64 0, i64* %12, align 8
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %11, align 8
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %108, %29
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 16
  br i1 %33, label %34, label %111

34:                                               ; preds = %31
  %35 = load i8*, i8** %11, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sge i32 %37, 48
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 57
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i64, i64* %12, align 8
  %46 = shl i64 %45, 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = sub nsw i32 %49, 48
  %51 = sext i32 %50 to i64
  %52 = add i64 %46, %51
  store i64 %52, i64* %12, align 8
  br label %105

53:                                               ; preds = %39, %34
  %54 = load i8*, i8** %11, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sge i32 %56, 97
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load i8*, i8** %11, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sle i32 %61, 102
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load i64, i64* %12, align 8
  %65 = shl i64 %64, 4
  %66 = load i8*, i8** %11, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = sub nsw i32 %68, 97
  %70 = add nsw i32 %69, 10
  %71 = sext i32 %70 to i64
  %72 = add i64 %65, %71
  store i64 %72, i64* %12, align 8
  br label %104

73:                                               ; preds = %58, %53
  %74 = load i8*, i8** %11, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sge i32 %76, 65
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load i8*, i8** %11, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp sle i32 %81, 70
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load i64, i64* %12, align 8
  %85 = shl i64 %84, 4
  %86 = load i8*, i8** %11, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = sub nsw i32 %88, 65
  %90 = add nsw i32 %89, 10
  %91 = sext i32 %90 to i64
  %92 = add i64 %85, %91
  store i64 %92, i64* %12, align 8
  br label %103

93:                                               ; preds = %78, %73
  %94 = load i8*, i8** %11, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 63
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i64, i64* %12, align 8
  %100 = shl i64 %99, 4
  store i64 %100, i64* %12, align 8
  br label %102

101:                                              ; preds = %93
  br label %111

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %83
  br label %104

104:                                              ; preds = %103, %63
  br label %105

105:                                              ; preds = %104, %44
  %106 = load i8*, i8** %11, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %11, align 8
  br label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %31

111:                                              ; preds = %101, %31
  %112 = load i32, i32* %14, align 4
  %113 = sub nsw i32 16, %112
  %114 = mul nsw i32 4, %113
  %115 = load i64, i64* %12, align 8
  %116 = zext i32 %114 to i64
  %117 = shl i64 %115, %116
  store i64 %117, i64* %12, align 8
  %118 = load i32, i32* %9, align 4
  %119 = shl i32 %118, 8
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %12, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %12, align 8
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %126

126:                                              ; preds = %141, %111
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* @no_ops, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load i64, i64* %12, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @op_array, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ugt i64 %131, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %144

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %126

144:                                              ; preds = %139, %126
  %145 = load i32, i32* @no_ops, align 4
  store i32 %145, i32* %15, align 4
  br label %146

146:                                              ; preds = %162, %144
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %146
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** @op_array, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @op_array, align 8
  %156 = load i32, i32* %15, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %158
  %160 = bitcast %struct.TYPE_4__* %154 to i8*
  %161 = bitcast %struct.TYPE_4__* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 8 %161, i64 32, i1 false)
  br label %162

162:                                              ; preds = %150
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %15, align 4
  br label %146

165:                                              ; preds = %146
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @op_array, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = load i8*, i8** %6, align 8
  %173 = call i32 @strcpy(i32 %171, i8* %172)
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** @op_array, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = call i32 @strcpy(i32 %179, i8* %180)
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @op_array, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load i8*, i8** %8, align 8
  %189 = call i32 @strcpy(i32 %187, i8* %188)
  %190 = load i64, i64* %12, align 8
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** @op_array, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  store i64 %190, i64* %195, align 8
  %196 = load i32, i32* %13, align 4
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** @op_array, align 8
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  store i32 %196, i32* %201, align 8
  %202 = load i32, i32* %9, align 4
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** @op_array, align 8
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 2
  store i32 %202, i32* %207, align 4
  %208 = load i32, i32* %10, align 4
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** @op_array, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 3
  store i32 %208, i32* %213, align 8
  %214 = load i32, i32* @no_ops, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* @no_ops, align 4
  ret void
}

declare dso_local %struct.TYPE_4__* @realloc(%struct.TYPE_4__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
