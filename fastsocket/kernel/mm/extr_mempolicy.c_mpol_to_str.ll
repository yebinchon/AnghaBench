; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_mpol_to_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_mpol_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i16, i16, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"interleave\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@default_policy = common dso_local global %struct.mempolicy zeroinitializer, align 4
@MPOL_F_LOCAL = common dso_local global i16 0, align 2
@MPOL_LOCAL = common dso_local global i16 0, align 2
@policy_types = common dso_local global i8** null, align 8
@ENOSPC = common dso_local global i32 0, align 4
@MPOL_MODE_FLAGS = common dso_local global i16 0, align 2
@MPOL_F_STATIC_NODES = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@MPOL_F_RELATIVE_NODES = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpol_to_str(i8* %0, i32 %1, %struct.mempolicy* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mempolicy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mempolicy* %2, %struct.mempolicy** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %10, align 8
  %16 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %17 = icmp ne %struct.mempolicy* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %20 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 4
  %22 = zext i16 %21 to i32
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi i32 [ %22, %18 ], [ 0, %23 ]
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %14, align 2
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %30 = add nsw i32 %28, %29
  %31 = add nsw i32 %30, 16
  %32 = icmp slt i32 %27, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @VM_BUG_ON(i32 %33)
  %35 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %36 = icmp ne %struct.mempolicy* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %39 = icmp eq %struct.mempolicy* %38, @default_policy
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %24
  store i16 130, i16* %13, align 2
  br label %45

41:                                               ; preds = %37
  %42 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %43 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %42, i32 0, i32 1
  %44 = load i16, i16* %43, align 2
  store i16 %44, i16* %13, align 2
  br label %45

45:                                               ; preds = %41, %40
  %46 = load i16, i16* %13, align 2
  %47 = zext i16 %46 to i32
  switch i32 %47, label %84 [
    i32 130, label %48
    i32 128, label %51
    i32 131, label %70
    i32 129, label %70
  ]

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @nodes_clear(i32 %49)
  br label %86

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @nodes_clear(i32 %52)
  %54 = load i16, i16* %14, align 2
  %55 = zext i16 %54 to i32
  %56 = load i16, i16* @MPOL_F_LOCAL, align 2
  %57 = zext i16 %56 to i32
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i16, i16* @MPOL_LOCAL, align 2
  store i16 %61, i16* %13, align 2
  br label %69

62:                                               ; preds = %51
  %63 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %64 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @node_set(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %60
  br label %86

70:                                               ; preds = %45, %45
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %75 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  br label %83

78:                                               ; preds = %70
  %79 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %80 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %78, %73
  br label %86

84:                                               ; preds = %45
  %85 = call i32 (...) @BUG()
  br label %86

86:                                               ; preds = %84, %83, %69, %48
  %87 = load i8**, i8*** @policy_types, align 8
  %88 = load i16, i16* %13, align 2
  %89 = zext i16 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strlen(i8* %91)
  store i32 %92, i32* %11, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = icmp ult i8* %96, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %86
  %104 = load i32, i32* @ENOSPC, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %223

106:                                              ; preds = %86
  %107 = load i8*, i8** %10, align 8
  %108 = load i8**, i8*** @policy_types, align 8
  %109 = load i16, i16* %13, align 2
  %110 = zext i16 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @strcpy(i8* %107, i8* %112)
  %114 = load i32, i32* %11, align 4
  %115 = load i8*, i8** %10, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %10, align 8
  %118 = load i16, i16* %14, align 2
  %119 = zext i16 %118 to i32
  %120 = load i16, i16* @MPOL_MODE_FLAGS, align 2
  %121 = zext i16 %120 to i32
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %183

124:                                              ; preds = %106
  %125 = load i8*, i8** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8*, i8** %10, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 2
  %131 = icmp ult i8* %128, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i32, i32* @ENOSPC, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %223

135:                                              ; preds = %124
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %10, align 8
  store i8 61, i8* %136, align 1
  %138 = load i16, i16* %14, align 2
  %139 = zext i16 %138 to i32
  %140 = load i16, i16* @MPOL_F_STATIC_NODES, align 2
  %141 = zext i16 %140 to i32
  %142 = and i32 %139, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %135
  %145 = load i8*, i8** %10, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8*, i8** %10, align 8
  %151 = ptrtoint i8* %149 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  %154 = trunc i64 %153 to i32
  %155 = call i32 @snprintf(i8* %145, i32 %154, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %156 = load i8*, i8** %10, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %10, align 8
  br label %182

159:                                              ; preds = %135
  %160 = load i16, i16* %14, align 2
  %161 = zext i16 %160 to i32
  %162 = load i16, i16* @MPOL_F_RELATIVE_NODES, align 2
  %163 = zext i16 %162 to i32
  %164 = and i32 %161, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %159
  %167 = load i8*, i8** %10, align 8
  %168 = load i8*, i8** %6, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8*, i8** %10, align 8
  %173 = ptrtoint i8* %171 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = trunc i64 %175 to i32
  %177 = call i32 @snprintf(i8* %167, i32 %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %178 = load i8*, i8** %10, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  store i8* %180, i8** %10, align 8
  br label %181

181:                                              ; preds = %166, %159
  br label %182

182:                                              ; preds = %181, %144
  br label %183

183:                                              ; preds = %182, %106
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @nodes_empty(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %216, label %187

187:                                              ; preds = %183
  %188 = load i8*, i8** %6, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i8*, i8** %10, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 2
  %194 = icmp ult i8* %191, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %187
  %196 = load i32, i32* @ENOSPC, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %5, align 4
  br label %223

198:                                              ; preds = %187
  %199 = load i8*, i8** %10, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %10, align 8
  store i8 58, i8* %199, align 1
  %201 = load i8*, i8** %10, align 8
  %202 = load i8*, i8** %6, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8*, i8** %10, align 8
  %207 = ptrtoint i8* %205 to i64
  %208 = ptrtoint i8* %206 to i64
  %209 = sub i64 %207, %208
  %210 = trunc i64 %209 to i32
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @nodelist_scnprintf(i8* %201, i32 %210, i32 %211)
  %213 = load i8*, i8** %10, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8* %215, i8** %10, align 8
  br label %216

216:                                              ; preds = %198, %183
  %217 = load i8*, i8** %10, align 8
  %218 = load i8*, i8** %6, align 8
  %219 = ptrtoint i8* %217 to i64
  %220 = ptrtoint i8* %218 to i64
  %221 = sub i64 %219, %220
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %216, %195, %132, %103
  %224 = load i32, i32* %5, align 4
  ret i32 %224
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nodes_clear(i32) #1

declare dso_local i32 @node_set(i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @nodes_empty(i32) #1

declare dso_local i32 @nodelist_scnprintf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
