; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_hashtab.c_htab_find_slot_with_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_hashtab.c_htab_find_slot_with_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64*, i32, i64 (i64, i64)*, i32, i32 }

@INSERT = common dso_local global i32 0, align 4
@HTAB_EMPTY_ENTRY = common dso_local global i64 0, align 8
@HTAB_DELETED_ENTRY = common dso_local global i64 0, align 8
@NO_INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @htab_find_slot_with_hash(%struct.TYPE_7__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = call i64 @htab_size(%struct.TYPE_7__* %15)
  store i64 %16, i64* %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @INSERT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %4
  %21 = load i64, i64* %13, align 8
  %22 = mul i64 %21, 3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = icmp ule i64 %22, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = call i64 @htab_expand(%struct.TYPE_7__* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i64* null, i64** %5, align 8
  br label %168

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = call i64 @htab_size(%struct.TYPE_7__* %35)
  store i64 %36, i64* %13, align 8
  br label %37

37:                                               ; preds = %34, %20, %4
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = call i64 @htab_mod(i64 %38, %struct.TYPE_7__* %39)
  store i64 %40, i64* %11, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  store i64* null, i64** %10, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* @HTAB_EMPTY_ENTRY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  br label %142

55:                                               ; preds = %37
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* @HTAB_DELETED_ENTRY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64* %64, i64** %10, align 8
  br label %80

65:                                               ; preds = %55
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load i64 (i64, i64)*, i64 (i64, i64)** %67, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i64 %68(i64 %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64* %78, i64** %5, align 8
  br label %168

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %59
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = call i64 @htab_mod_m2(i64 %82, %struct.TYPE_7__* %83)
  store i64 %84, i64* %12, align 8
  br label %85

85:                                               ; preds = %141, %81
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %13, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %85
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %11, align 8
  %99 = sub i64 %98, %97
  store i64 %99, i64* %11, align 8
  br label %100

100:                                              ; preds = %96, %85
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* @HTAB_EMPTY_ENTRY, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  br label %142

111:                                              ; preds = %100
  %112 = load i64, i64* %14, align 8
  %113 = load i64, i64* @HTAB_DELETED_ENTRY, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %111
  %116 = load i64*, i64** %10, align 8
  %117 = icmp ne i64* %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  store i64* %123, i64** %10, align 8
  br label %124

124:                                              ; preds = %118, %115
  br label %140

125:                                              ; preds = %111
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 3
  %128 = load i64 (i64, i64)*, i64 (i64, i64)** %127, align 8
  %129 = load i64, i64* %14, align 8
  %130 = load i64, i64* %7, align 8
  %131 = call i64 %128(i64 %129, i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %125
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* %11, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  store i64* %138, i64** %5, align 8
  br label %168

139:                                              ; preds = %125
  br label %140

140:                                              ; preds = %139, %124
  br label %141

141:                                              ; preds = %140
  br label %85

142:                                              ; preds = %110, %54
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @NO_INSERT, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i64* null, i64** %5, align 8
  br label %168

147:                                              ; preds = %142
  %148 = load i64*, i64** %10, align 8
  %149 = icmp ne i64* %148, null
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %152, align 8
  %155 = load i64, i64* @HTAB_EMPTY_ENTRY, align 8
  %156 = load i64*, i64** %10, align 8
  store i64 %155, i64* %156, align 8
  %157 = load i64*, i64** %10, align 8
  store i64* %157, i64** %5, align 8
  br label %168

158:                                              ; preds = %147
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* %11, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  store i64* %167, i64** %5, align 8
  br label %168

168:                                              ; preds = %158, %150, %146, %133, %73, %33
  %169 = load i64*, i64** %5, align 8
  ret i64* %169
}

declare dso_local i64 @htab_size(%struct.TYPE_7__*) #1

declare dso_local i64 @htab_expand(%struct.TYPE_7__*) #1

declare dso_local i64 @htab_mod(i64, %struct.TYPE_7__*) #1

declare dso_local i64 @htab_mod_m2(i64, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
