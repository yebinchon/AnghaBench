; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_genfs_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_genfs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.genfs* }
%struct.genfs = type { %struct.ocontext*, i32*, %struct.genfs* }
%struct.ocontext = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__, %struct.ocontext* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, i8*)* @genfs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genfs_write(%struct.policydb* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.genfs*, align 8
  %7 = alloca %struct.ocontext*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [1 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.policydb*, %struct.policydb** %4, align 8
  %12 = getelementptr inbounds %struct.policydb, %struct.policydb* %11, i32 0, i32 0
  %13 = load %struct.genfs*, %struct.genfs** %12, align 8
  store %struct.genfs* %13, %struct.genfs** %6, align 8
  br label %14

14:                                               ; preds = %20, %2
  %15 = load %struct.genfs*, %struct.genfs** %6, align 8
  %16 = icmp ne %struct.genfs* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i64, i64* %8, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %17
  %21 = load %struct.genfs*, %struct.genfs** %6, align 8
  %22 = getelementptr inbounds %struct.genfs, %struct.genfs* %21, i32 0, i32 2
  %23 = load %struct.genfs*, %struct.genfs** %22, align 8
  store %struct.genfs* %23, %struct.genfs** %6, align 8
  br label %14

24:                                               ; preds = %14
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @cpu_to_le32(i64 %25)
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @put_entry(i32* %28, i32 4, i32 1, i8* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %167

35:                                               ; preds = %24
  %36 = load %struct.policydb*, %struct.policydb** %4, align 8
  %37 = getelementptr inbounds %struct.policydb, %struct.policydb* %36, i32 0, i32 0
  %38 = load %struct.genfs*, %struct.genfs** %37, align 8
  store %struct.genfs* %38, %struct.genfs** %6, align 8
  br label %39

39:                                               ; preds = %162, %35
  %40 = load %struct.genfs*, %struct.genfs** %6, align 8
  %41 = icmp ne %struct.genfs* %40, null
  br i1 %41, label %42, label %166

42:                                               ; preds = %39
  %43 = load %struct.genfs*, %struct.genfs** %6, align 8
  %44 = getelementptr inbounds %struct.genfs, %struct.genfs* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @strlen(i32* %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @cpu_to_le32(i64 %47)
  %49 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @put_entry(i32* %50, i32 4, i32 1, i8* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %3, align 4
  br label %167

57:                                               ; preds = %42
  %58 = load %struct.genfs*, %struct.genfs** %6, align 8
  %59 = getelementptr inbounds %struct.genfs, %struct.genfs* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @put_entry(i32* %60, i32 1, i32 %62, i8* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %3, align 4
  br label %167

69:                                               ; preds = %57
  store i64 0, i64* %8, align 8
  %70 = load %struct.genfs*, %struct.genfs** %6, align 8
  %71 = getelementptr inbounds %struct.genfs, %struct.genfs* %70, i32 0, i32 0
  %72 = load %struct.ocontext*, %struct.ocontext** %71, align 8
  store %struct.ocontext* %72, %struct.ocontext** %7, align 8
  br label %73

73:                                               ; preds = %79, %69
  %74 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %75 = icmp ne %struct.ocontext* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %8, align 8
  br label %79

79:                                               ; preds = %76
  %80 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %81 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %80, i32 0, i32 3
  %82 = load %struct.ocontext*, %struct.ocontext** %81, align 8
  store %struct.ocontext* %82, %struct.ocontext** %7, align 8
  br label %73

83:                                               ; preds = %73
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @cpu_to_le32(i64 %84)
  %86 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @put_entry(i32* %87, i32 4, i32 1, i8* %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %3, align 4
  br label %167

94:                                               ; preds = %83
  %95 = load %struct.genfs*, %struct.genfs** %6, align 8
  %96 = getelementptr inbounds %struct.genfs, %struct.genfs* %95, i32 0, i32 0
  %97 = load %struct.ocontext*, %struct.ocontext** %96, align 8
  store %struct.ocontext* %97, %struct.ocontext** %7, align 8
  br label %98

98:                                               ; preds = %157, %94
  %99 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %100 = icmp ne %struct.ocontext* %99, null
  br i1 %100, label %101, label %161

101:                                              ; preds = %98
  %102 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %103 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i64 @strlen(i32* %105)
  store i64 %106, i64* %8, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @cpu_to_le32(i64 %107)
  %109 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %111 = load i8*, i8** %5, align 8
  %112 = call i32 @put_entry(i32* %110, i32 4, i32 1, i8* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %101
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %3, align 4
  br label %167

117:                                              ; preds = %101
  %118 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %119 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* %8, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 @put_entry(i32* %121, i32 1, i32 %123, i8* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %117
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %3, align 4
  br label %167

130:                                              ; preds = %117
  %131 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %132 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @cpu_to_le32(i64 %134)
  %136 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %135, i32* %136, align 4
  %137 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 @put_entry(i32* %137, i32 4, i32 1, i8* %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %130
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %3, align 4
  br label %167

144:                                              ; preds = %130
  %145 = load %struct.policydb*, %struct.policydb** %4, align 8
  %146 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %147 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i8*, i8** %5, align 8
  %151 = call i32 @context_write(%struct.policydb* %145, i32* %149, i8* %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %3, align 4
  br label %167

156:                                              ; preds = %144
  br label %157

157:                                              ; preds = %156
  %158 = load %struct.ocontext*, %struct.ocontext** %7, align 8
  %159 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %158, i32 0, i32 3
  %160 = load %struct.ocontext*, %struct.ocontext** %159, align 8
  store %struct.ocontext* %160, %struct.ocontext** %7, align 8
  br label %98

161:                                              ; preds = %98
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.genfs*, %struct.genfs** %6, align 8
  %164 = getelementptr inbounds %struct.genfs, %struct.genfs* %163, i32 0, i32 2
  %165 = load %struct.genfs*, %struct.genfs** %164, align 8
  store %struct.genfs* %165, %struct.genfs** %6, align 8
  br label %39

166:                                              ; preds = %39
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %154, %142, %128, %115, %92, %67, %55, %33
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @put_entry(i32*, i32, i32, i8*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @context_write(%struct.policydb*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
