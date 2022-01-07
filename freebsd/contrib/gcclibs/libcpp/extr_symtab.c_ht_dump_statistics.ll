; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_symtab.c_ht_dump_statistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_symtab.c_ht_dump_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i32, i64* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"\0AString pool\0Aentries\09\09%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"identifiers\09%lu (%.2f%%)\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"slots\09\09%lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"bytes\09\09%lu%c (%lu%c overhead)\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"table size\09%lu%c\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"coll/search\09%.4f\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ins/search\09%.4f\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"avg. entry\09%.2f bytes (+/- %.2f)\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"longest entry\09%lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ht_dump_statistics(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i64 0, i64* %4, align 8
  store double 0.000000e+00, double* %9, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %13, align 8
  %19 = load i64*, i64** %13, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %19, i64 %23
  store i64* %24, i64** %14, align 8
  br label %25

25:                                               ; preds = %52, %1
  %26 = load i64*, i64** %13, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load i64*, i64** %13, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @HT_LEN(i64 %31)
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %15, align 8
  %37 = uitofp i64 %36 to double
  %38 = load i64, i64* %15, align 8
  %39 = uitofp i64 %38 to double
  %40 = fmul double %37, %39
  %41 = load double, double* %9, align 8
  %42 = fadd double %41, %40
  store double %42, double* %9, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %29
  %47 = load i64, i64* %15, align 8
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %46, %29
  %49 = load i64, i64* %4, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %48, %25
  br label %52

52:                                               ; preds = %51
  %53 = load i64*, i64** %13, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %13, align 8
  %55 = load i64*, i64** %14, align 8
  %56 = icmp ult i64* %54, %55
  br i1 %56, label %25, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %3, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = call i64 @obstack_memory_used(i32* %62)
  %64 = load i64, i64* %7, align 8
  %65 = sub i64 %63, %64
  store i64 %65, i64* %5, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 8
  store i64 %70, i64* %6, align 8
  %71 = load i32, i32* @stderr, align 4
  %72 = load i64, i64* %3, align 8
  %73 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %72)
  %74 = load i32, i32* @stderr, align 4
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = uitofp i64 %76 to double
  %78 = fmul double %77, 1.000000e+02
  %79 = load i64, i64* %3, align 8
  %80 = uitofp i64 %79 to double
  %81 = fdiv double %78, %80
  %82 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %75, double %81)
  %83 = load i32, i32* @stderr, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* @stderr, align 4
  %90 = load i64, i64* %7, align 8
  %91 = icmp ult i64 %90, 10240
  br i1 %91, label %92, label %94

92:                                               ; preds = %57
  %93 = load i64, i64* %7, align 8
  br label %105

94:                                               ; preds = %57
  %95 = load i64, i64* %7, align 8
  %96 = icmp ult i64 %95, 10485760
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i64, i64* %7, align 8
  %99 = udiv i64 %98, 1024
  br label %103

100:                                              ; preds = %94
  %101 = load i64, i64* %7, align 8
  %102 = udiv i64 %101, 1048576
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi i64 [ %99, %97 ], [ %102, %100 ]
  br label %105

105:                                              ; preds = %103, %92
  %106 = phi i64 [ %93, %92 ], [ %104, %103 ]
  %107 = load i64, i64* %7, align 8
  %108 = icmp ult i64 %107, 10240
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %115

110:                                              ; preds = %105
  %111 = load i64, i64* %7, align 8
  %112 = icmp ult i64 %111, 10485760
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 107, i32 77
  br label %115

115:                                              ; preds = %110, %109
  %116 = phi i32 [ 32, %109 ], [ %114, %110 ]
  %117 = load i64, i64* %5, align 8
  %118 = icmp ult i64 %117, 10240
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i64, i64* %5, align 8
  br label %132

121:                                              ; preds = %115
  %122 = load i64, i64* %5, align 8
  %123 = icmp ult i64 %122, 10485760
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i64, i64* %5, align 8
  %126 = udiv i64 %125, 1024
  br label %130

127:                                              ; preds = %121
  %128 = load i64, i64* %5, align 8
  %129 = udiv i64 %128, 1048576
  br label %130

130:                                              ; preds = %127, %124
  %131 = phi i64 [ %126, %124 ], [ %129, %127 ]
  br label %132

132:                                              ; preds = %130, %119
  %133 = phi i64 [ %120, %119 ], [ %131, %130 ]
  %134 = load i64, i64* %5, align 8
  %135 = icmp ult i64 %134, 10240
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %142

137:                                              ; preds = %132
  %138 = load i64, i64* %5, align 8
  %139 = icmp ult i64 %138, 10485760
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 107, i32 77
  br label %142

142:                                              ; preds = %137, %136
  %143 = phi i32 [ 32, %136 ], [ %141, %137 ]
  %144 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %106, i32 %116, i64 %133, i32 %143)
  %145 = load i32, i32* @stderr, align 4
  %146 = load i64, i64* %6, align 8
  %147 = icmp ult i64 %146, 10240
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i64, i64* %6, align 8
  br label %161

150:                                              ; preds = %142
  %151 = load i64, i64* %6, align 8
  %152 = icmp ult i64 %151, 10485760
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i64, i64* %6, align 8
  %155 = udiv i64 %154, 1024
  br label %159

156:                                              ; preds = %150
  %157 = load i64, i64* %6, align 8
  %158 = udiv i64 %157, 1048576
  br label %159

159:                                              ; preds = %156, %153
  %160 = phi i64 [ %155, %153 ], [ %158, %156 ]
  br label %161

161:                                              ; preds = %159, %148
  %162 = phi i64 [ %149, %148 ], [ %160, %159 ]
  %163 = load i64, i64* %6, align 8
  %164 = icmp ult i64 %163, 10240
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %171

166:                                              ; preds = %161
  %167 = load i64, i64* %6, align 8
  %168 = icmp ult i64 %167, 10485760
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 107, i32 77
  br label %171

171:                                              ; preds = %166, %165
  %172 = phi i32 [ 32, %165 ], [ %170, %166 ]
  %173 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %162, i32 %172)
  %174 = load i64, i64* %7, align 8
  %175 = uitofp i64 %174 to double
  %176 = load i64, i64* %3, align 8
  %177 = uitofp i64 %176 to double
  %178 = fdiv double %175, %177
  store double %178, double* %10, align 8
  %179 = load double, double* %10, align 8
  %180 = load double, double* %10, align 8
  %181 = fmul double %179, %180
  store double %181, double* %12, align 8
  %182 = load double, double* %9, align 8
  %183 = load i64, i64* %3, align 8
  %184 = uitofp i64 %183 to double
  %185 = fdiv double %182, %184
  store double %185, double* %11, align 8
  %186 = load i32, i32* @stderr, align 4
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = sitofp i64 %189 to double
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = sitofp i64 %193 to double
  %195 = fdiv double %190, %194
  %196 = fptoui double %195 to i64
  %197 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %186, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %196)
  %198 = load i32, i32* @stderr, align 4
  %199 = load i64, i64* %3, align 8
  %200 = uitofp i64 %199 to double
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = sitofp i64 %203 to double
  %205 = fdiv double %200, %204
  %206 = fptoui double %205 to i64
  %207 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %198, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 %206)
  %208 = load i32, i32* @stderr, align 4
  %209 = load double, double* %10, align 8
  %210 = fptoui double %209 to i64
  %211 = load double, double* %11, align 8
  %212 = load double, double* %12, align 8
  %213 = fsub double %211, %212
  %214 = call double @approx_sqrt(double %213)
  %215 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %208, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %210, double %214)
  %216 = load i32, i32* @stderr, align 4
  %217 = load i64, i64* %8, align 8
  %218 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %216, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i64 %217)
  ret void
}

declare dso_local i64 @HT_LEN(i64) #1

declare dso_local i64 @obstack_memory_used(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64, ...) #1

declare dso_local double @approx_sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
