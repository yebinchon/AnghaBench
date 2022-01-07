; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_expr.c_expr_transform.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_expr.c_expr_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }
%struct.expr = type { i32, %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, %struct.expr* }
%struct.TYPE_8__ = type { %struct.expr*, %struct.TYPE_9__* }

@S_BOOLEAN = common dso_local global i32 0, align 4
@symbol_no = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@symbol_mod = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [54 x i8] c"boolean symbol %s tested for 'm'? test forced to 'n'\0A\00", align 1
@symbol_yes = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"boolean symbol %s tested for 'm'? test forced to 'y'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.expr* @expr_transform(%struct.expr* %0) #0 {
  %2 = alloca %struct.expr*, align 8
  %3 = alloca %struct.expr*, align 8
  %4 = alloca %struct.expr*, align 8
  store %struct.expr* %0, %struct.expr** %3, align 8
  %5 = load %struct.expr*, %struct.expr** %3, align 8
  %6 = icmp ne %struct.expr* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.expr* null, %struct.expr** %2, align 8
  br label %325

8:                                                ; preds = %1
  %9 = load %struct.expr*, %struct.expr** %3, align 8
  %10 = getelementptr inbounds %struct.expr, %struct.expr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %13 [
    i32 133, label %12
    i32 128, label %12
    i32 129, label %12
    i32 132, label %12
  ]

12:                                               ; preds = %8, %8, %8, %8
  br label %30

13:                                               ; preds = %8
  %14 = load %struct.expr*, %struct.expr** %3, align 8
  %15 = getelementptr inbounds %struct.expr, %struct.expr* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.expr*, %struct.expr** %16, align 8
  %18 = call %struct.expr* @expr_transform(%struct.expr* %17)
  %19 = load %struct.expr*, %struct.expr** %3, align 8
  %20 = getelementptr inbounds %struct.expr, %struct.expr* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store %struct.expr* %18, %struct.expr** %21, align 8
  %22 = load %struct.expr*, %struct.expr** %3, align 8
  %23 = getelementptr inbounds %struct.expr, %struct.expr* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.expr*, %struct.expr** %24, align 8
  %26 = call %struct.expr* @expr_transform(%struct.expr* %25)
  %27 = load %struct.expr*, %struct.expr** %3, align 8
  %28 = getelementptr inbounds %struct.expr, %struct.expr* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store %struct.expr* %26, %struct.expr** %29, align 8
  br label %30

30:                                               ; preds = %13, %12
  %31 = load %struct.expr*, %struct.expr** %3, align 8
  %32 = getelementptr inbounds %struct.expr, %struct.expr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %322 [
    i32 133, label %34
    i32 128, label %100
    i32 131, label %166
  ]

34:                                               ; preds = %30
  %35 = load %struct.expr*, %struct.expr** %3, align 8
  %36 = getelementptr inbounds %struct.expr, %struct.expr* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @S_BOOLEAN, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %323

44:                                               ; preds = %34
  %45 = load %struct.expr*, %struct.expr** %3, align 8
  %46 = getelementptr inbounds %struct.expr, %struct.expr* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = icmp eq %struct.TYPE_9__* %48, @symbol_no
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load %struct.expr*, %struct.expr** %3, align 8
  %52 = getelementptr inbounds %struct.expr, %struct.expr* %51, i32 0, i32 0
  store i32 131, i32* %52, align 8
  %53 = load %struct.expr*, %struct.expr** %3, align 8
  %54 = getelementptr inbounds %struct.expr, %struct.expr* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = call i8* @expr_alloc_symbol(%struct.TYPE_9__* %56)
  %58 = bitcast i8* %57 to %struct.expr*
  %59 = load %struct.expr*, %struct.expr** %3, align 8
  %60 = getelementptr inbounds %struct.expr, %struct.expr* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store %struct.expr* %58, %struct.expr** %61, align 8
  %62 = load %struct.expr*, %struct.expr** %3, align 8
  %63 = getelementptr inbounds %struct.expr, %struct.expr* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %64, align 8
  br label %323

65:                                               ; preds = %44
  %66 = load %struct.expr*, %struct.expr** %3, align 8
  %67 = getelementptr inbounds %struct.expr, %struct.expr* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = icmp eq %struct.TYPE_9__* %69, @symbol_mod
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.expr*, %struct.expr** %3, align 8
  %73 = getelementptr inbounds %struct.expr, %struct.expr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %77)
  %79 = load %struct.expr*, %struct.expr** %3, align 8
  %80 = getelementptr inbounds %struct.expr, %struct.expr* %79, i32 0, i32 0
  store i32 129, i32* %80, align 8
  %81 = load %struct.expr*, %struct.expr** %3, align 8
  %82 = getelementptr inbounds %struct.expr, %struct.expr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store %struct.TYPE_9__* @symbol_no, %struct.TYPE_9__** %83, align 8
  %84 = load %struct.expr*, %struct.expr** %3, align 8
  %85 = getelementptr inbounds %struct.expr, %struct.expr* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %86, align 8
  br label %323

87:                                               ; preds = %65
  %88 = load %struct.expr*, %struct.expr** %3, align 8
  %89 = getelementptr inbounds %struct.expr, %struct.expr* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = icmp eq %struct.TYPE_9__* %91, @symbol_yes
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.expr*, %struct.expr** %3, align 8
  %95 = getelementptr inbounds %struct.expr, %struct.expr* %94, i32 0, i32 0
  store i32 129, i32* %95, align 8
  %96 = load %struct.expr*, %struct.expr** %3, align 8
  %97 = getelementptr inbounds %struct.expr, %struct.expr* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %98, align 8
  br label %323

99:                                               ; preds = %87
  br label %323

100:                                              ; preds = %30
  %101 = load %struct.expr*, %struct.expr** %3, align 8
  %102 = getelementptr inbounds %struct.expr, %struct.expr* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @S_BOOLEAN, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %323

110:                                              ; preds = %100
  %111 = load %struct.expr*, %struct.expr** %3, align 8
  %112 = getelementptr inbounds %struct.expr, %struct.expr* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = icmp eq %struct.TYPE_9__* %114, @symbol_no
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.expr*, %struct.expr** %3, align 8
  %118 = getelementptr inbounds %struct.expr, %struct.expr* %117, i32 0, i32 0
  store i32 129, i32* %118, align 8
  %119 = load %struct.expr*, %struct.expr** %3, align 8
  %120 = getelementptr inbounds %struct.expr, %struct.expr* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %121, align 8
  br label %323

122:                                              ; preds = %110
  %123 = load %struct.expr*, %struct.expr** %3, align 8
  %124 = getelementptr inbounds %struct.expr, %struct.expr* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = icmp eq %struct.TYPE_9__* %126, @symbol_mod
  br i1 %127, label %128, label %144

128:                                              ; preds = %122
  %129 = load %struct.expr*, %struct.expr** %3, align 8
  %130 = getelementptr inbounds %struct.expr, %struct.expr* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %134)
  %136 = load %struct.expr*, %struct.expr** %3, align 8
  %137 = getelementptr inbounds %struct.expr, %struct.expr* %136, i32 0, i32 0
  store i32 129, i32* %137, align 8
  %138 = load %struct.expr*, %struct.expr** %3, align 8
  %139 = getelementptr inbounds %struct.expr, %struct.expr* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store %struct.TYPE_9__* @symbol_yes, %struct.TYPE_9__** %140, align 8
  %141 = load %struct.expr*, %struct.expr** %3, align 8
  %142 = getelementptr inbounds %struct.expr, %struct.expr* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %143, align 8
  br label %323

144:                                              ; preds = %122
  %145 = load %struct.expr*, %struct.expr** %3, align 8
  %146 = getelementptr inbounds %struct.expr, %struct.expr* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = icmp eq %struct.TYPE_9__* %148, @symbol_yes
  br i1 %149, label %150, label %165

150:                                              ; preds = %144
  %151 = load %struct.expr*, %struct.expr** %3, align 8
  %152 = getelementptr inbounds %struct.expr, %struct.expr* %151, i32 0, i32 0
  store i32 131, i32* %152, align 8
  %153 = load %struct.expr*, %struct.expr** %3, align 8
  %154 = getelementptr inbounds %struct.expr, %struct.expr* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = call i8* @expr_alloc_symbol(%struct.TYPE_9__* %156)
  %158 = bitcast i8* %157 to %struct.expr*
  %159 = load %struct.expr*, %struct.expr** %3, align 8
  %160 = getelementptr inbounds %struct.expr, %struct.expr* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  store %struct.expr* %158, %struct.expr** %161, align 8
  %162 = load %struct.expr*, %struct.expr** %3, align 8
  %163 = getelementptr inbounds %struct.expr, %struct.expr* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %164, align 8
  br label %323

165:                                              ; preds = %144
  br label %323

166:                                              ; preds = %30
  %167 = load %struct.expr*, %struct.expr** %3, align 8
  %168 = getelementptr inbounds %struct.expr, %struct.expr* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load %struct.expr*, %struct.expr** %169, align 8
  %171 = getelementptr inbounds %struct.expr, %struct.expr* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  switch i32 %172, label %320 [
    i32 131, label %173
    i32 133, label %191
    i32 128, label %191
    i32 130, label %207
    i32 134, label %230
    i32 129, label %253
  ]

173:                                              ; preds = %166
  %174 = load %struct.expr*, %struct.expr** %3, align 8
  %175 = getelementptr inbounds %struct.expr, %struct.expr* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load %struct.expr*, %struct.expr** %176, align 8
  %178 = getelementptr inbounds %struct.expr, %struct.expr* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load %struct.expr*, %struct.expr** %179, align 8
  store %struct.expr* %180, %struct.expr** %4, align 8
  %181 = load %struct.expr*, %struct.expr** %3, align 8
  %182 = getelementptr inbounds %struct.expr, %struct.expr* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load %struct.expr*, %struct.expr** %183, align 8
  %185 = call i32 @free(%struct.expr* %184)
  %186 = load %struct.expr*, %struct.expr** %3, align 8
  %187 = call i32 @free(%struct.expr* %186)
  %188 = load %struct.expr*, %struct.expr** %4, align 8
  store %struct.expr* %188, %struct.expr** %3, align 8
  %189 = load %struct.expr*, %struct.expr** %3, align 8
  %190 = call %struct.expr* @expr_transform(%struct.expr* %189)
  store %struct.expr* %190, %struct.expr** %3, align 8
  br label %321

191:                                              ; preds = %166, %166
  %192 = load %struct.expr*, %struct.expr** %3, align 8
  %193 = getelementptr inbounds %struct.expr, %struct.expr* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load %struct.expr*, %struct.expr** %194, align 8
  store %struct.expr* %195, %struct.expr** %4, align 8
  %196 = load %struct.expr*, %struct.expr** %3, align 8
  %197 = call i32 @free(%struct.expr* %196)
  %198 = load %struct.expr*, %struct.expr** %4, align 8
  store %struct.expr* %198, %struct.expr** %3, align 8
  %199 = load %struct.expr*, %struct.expr** %3, align 8
  %200 = getelementptr inbounds %struct.expr, %struct.expr* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 133
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 128, i32 133
  %205 = load %struct.expr*, %struct.expr** %3, align 8
  %206 = getelementptr inbounds %struct.expr, %struct.expr* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  br label %321

207:                                              ; preds = %166
  %208 = load %struct.expr*, %struct.expr** %3, align 8
  %209 = getelementptr inbounds %struct.expr, %struct.expr* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load %struct.expr*, %struct.expr** %210, align 8
  store %struct.expr* %211, %struct.expr** %4, align 8
  %212 = load %struct.expr*, %struct.expr** %3, align 8
  %213 = getelementptr inbounds %struct.expr, %struct.expr* %212, i32 0, i32 0
  store i32 134, i32* %213, align 8
  %214 = load %struct.expr*, %struct.expr** %4, align 8
  %215 = getelementptr inbounds %struct.expr, %struct.expr* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load %struct.expr*, %struct.expr** %216, align 8
  %218 = call i8* @expr_alloc_one(i32 131, %struct.expr* %217)
  %219 = bitcast i8* %218 to %struct.expr*
  %220 = load %struct.expr*, %struct.expr** %3, align 8
  %221 = getelementptr inbounds %struct.expr, %struct.expr* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  store %struct.expr* %219, %struct.expr** %222, align 8
  %223 = load %struct.expr*, %struct.expr** %4, align 8
  %224 = getelementptr inbounds %struct.expr, %struct.expr* %223, i32 0, i32 0
  store i32 131, i32* %224, align 8
  %225 = load %struct.expr*, %struct.expr** %4, align 8
  %226 = getelementptr inbounds %struct.expr, %struct.expr* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  store %struct.expr* null, %struct.expr** %227, align 8
  %228 = load %struct.expr*, %struct.expr** %3, align 8
  %229 = call %struct.expr* @expr_transform(%struct.expr* %228)
  store %struct.expr* %229, %struct.expr** %3, align 8
  br label %321

230:                                              ; preds = %166
  %231 = load %struct.expr*, %struct.expr** %3, align 8
  %232 = getelementptr inbounds %struct.expr, %struct.expr* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 1
  %234 = load %struct.expr*, %struct.expr** %233, align 8
  store %struct.expr* %234, %struct.expr** %4, align 8
  %235 = load %struct.expr*, %struct.expr** %3, align 8
  %236 = getelementptr inbounds %struct.expr, %struct.expr* %235, i32 0, i32 0
  store i32 130, i32* %236, align 8
  %237 = load %struct.expr*, %struct.expr** %4, align 8
  %238 = getelementptr inbounds %struct.expr, %struct.expr* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load %struct.expr*, %struct.expr** %239, align 8
  %241 = call i8* @expr_alloc_one(i32 131, %struct.expr* %240)
  %242 = bitcast i8* %241 to %struct.expr*
  %243 = load %struct.expr*, %struct.expr** %3, align 8
  %244 = getelementptr inbounds %struct.expr, %struct.expr* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  store %struct.expr* %242, %struct.expr** %245, align 8
  %246 = load %struct.expr*, %struct.expr** %4, align 8
  %247 = getelementptr inbounds %struct.expr, %struct.expr* %246, i32 0, i32 0
  store i32 131, i32* %247, align 8
  %248 = load %struct.expr*, %struct.expr** %4, align 8
  %249 = getelementptr inbounds %struct.expr, %struct.expr* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  store %struct.expr* null, %struct.expr** %250, align 8
  %251 = load %struct.expr*, %struct.expr** %3, align 8
  %252 = call %struct.expr* @expr_transform(%struct.expr* %251)
  store %struct.expr* %252, %struct.expr** %3, align 8
  br label %321

253:                                              ; preds = %166
  %254 = load %struct.expr*, %struct.expr** %3, align 8
  %255 = getelementptr inbounds %struct.expr, %struct.expr* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load %struct.expr*, %struct.expr** %256, align 8
  %258 = getelementptr inbounds %struct.expr, %struct.expr* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %259, align 8
  %261 = icmp eq %struct.TYPE_9__* %260, @symbol_yes
  br i1 %261, label %262, label %275

262:                                              ; preds = %253
  %263 = load %struct.expr*, %struct.expr** %3, align 8
  %264 = getelementptr inbounds %struct.expr, %struct.expr* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 1
  %266 = load %struct.expr*, %struct.expr** %265, align 8
  store %struct.expr* %266, %struct.expr** %4, align 8
  %267 = load %struct.expr*, %struct.expr** %3, align 8
  %268 = call i32 @free(%struct.expr* %267)
  %269 = load %struct.expr*, %struct.expr** %4, align 8
  store %struct.expr* %269, %struct.expr** %3, align 8
  %270 = load %struct.expr*, %struct.expr** %3, align 8
  %271 = getelementptr inbounds %struct.expr, %struct.expr* %270, i32 0, i32 0
  store i32 129, i32* %271, align 8
  %272 = load %struct.expr*, %struct.expr** %3, align 8
  %273 = getelementptr inbounds %struct.expr, %struct.expr* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  store %struct.TYPE_9__* @symbol_no, %struct.TYPE_9__** %274, align 8
  br label %321

275:                                              ; preds = %253
  %276 = load %struct.expr*, %struct.expr** %3, align 8
  %277 = getelementptr inbounds %struct.expr, %struct.expr* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 1
  %279 = load %struct.expr*, %struct.expr** %278, align 8
  %280 = getelementptr inbounds %struct.expr, %struct.expr* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %281, align 8
  %283 = icmp eq %struct.TYPE_9__* %282, @symbol_mod
  br i1 %283, label %284, label %297

284:                                              ; preds = %275
  %285 = load %struct.expr*, %struct.expr** %3, align 8
  %286 = getelementptr inbounds %struct.expr, %struct.expr* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 1
  %288 = load %struct.expr*, %struct.expr** %287, align 8
  store %struct.expr* %288, %struct.expr** %4, align 8
  %289 = load %struct.expr*, %struct.expr** %3, align 8
  %290 = call i32 @free(%struct.expr* %289)
  %291 = load %struct.expr*, %struct.expr** %4, align 8
  store %struct.expr* %291, %struct.expr** %3, align 8
  %292 = load %struct.expr*, %struct.expr** %3, align 8
  %293 = getelementptr inbounds %struct.expr, %struct.expr* %292, i32 0, i32 0
  store i32 129, i32* %293, align 8
  %294 = load %struct.expr*, %struct.expr** %3, align 8
  %295 = getelementptr inbounds %struct.expr, %struct.expr* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  store %struct.TYPE_9__* @symbol_mod, %struct.TYPE_9__** %296, align 8
  br label %321

297:                                              ; preds = %275
  %298 = load %struct.expr*, %struct.expr** %3, align 8
  %299 = getelementptr inbounds %struct.expr, %struct.expr* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 1
  %301 = load %struct.expr*, %struct.expr** %300, align 8
  %302 = getelementptr inbounds %struct.expr, %struct.expr* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %303, align 8
  %305 = icmp eq %struct.TYPE_9__* %304, @symbol_no
  br i1 %305, label %306, label %319

306:                                              ; preds = %297
  %307 = load %struct.expr*, %struct.expr** %3, align 8
  %308 = getelementptr inbounds %struct.expr, %struct.expr* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 1
  %310 = load %struct.expr*, %struct.expr** %309, align 8
  store %struct.expr* %310, %struct.expr** %4, align 8
  %311 = load %struct.expr*, %struct.expr** %3, align 8
  %312 = call i32 @free(%struct.expr* %311)
  %313 = load %struct.expr*, %struct.expr** %4, align 8
  store %struct.expr* %313, %struct.expr** %3, align 8
  %314 = load %struct.expr*, %struct.expr** %3, align 8
  %315 = getelementptr inbounds %struct.expr, %struct.expr* %314, i32 0, i32 0
  store i32 129, i32* %315, align 8
  %316 = load %struct.expr*, %struct.expr** %3, align 8
  %317 = getelementptr inbounds %struct.expr, %struct.expr* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 0
  store %struct.TYPE_9__* @symbol_yes, %struct.TYPE_9__** %318, align 8
  br label %321

319:                                              ; preds = %297
  br label %321

320:                                              ; preds = %166
  br label %321

321:                                              ; preds = %320, %319, %306, %284, %262, %230, %207, %191, %173
  br label %323

322:                                              ; preds = %30
  br label %323

323:                                              ; preds = %322, %321, %165, %150, %128, %116, %109, %99, %93, %71, %50, %43
  %324 = load %struct.expr*, %struct.expr** %3, align 8
  store %struct.expr* %324, %struct.expr** %2, align 8
  br label %325

325:                                              ; preds = %323, %7
  %326 = load %struct.expr*, %struct.expr** %2, align 8
  ret %struct.expr* %326
}

declare dso_local i8* @expr_alloc_symbol(%struct.TYPE_9__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(%struct.expr*) #1

declare dso_local i8* @expr_alloc_one(i32, %struct.expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
